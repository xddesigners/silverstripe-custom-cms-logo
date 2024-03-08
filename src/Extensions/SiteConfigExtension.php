<?php

namespace XD\CustomCMSLogo\Extensions;

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\SiteConfig\SiteConfig;

/**
 * Class SiteConfigExtension
 * @package XD\CustomCMSLogo\Extensions\
 * @property SiteConfig|SiteConfigExtension $owner
 * @method Image CMSLogo()
 */
class SiteConfigExtension extends DataExtension
{

    private static $has_one = [
        'CMSLogo' => Image::class
    ];

    private static $owns = [
        'CMSLogo'
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab(
           'Root.CMSLogo',
           [
               UploadField::create('CMSLogo', _t(__CLASS__ . '.CMSLogo', 'CMS logo'))->setFolderName('cms')
           ]
        );
        parent::updateCMSFields($fields);
    }

}

