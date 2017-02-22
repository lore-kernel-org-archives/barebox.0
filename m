Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cgSrc-0002ZS-4D
 for barebox@lists.infradead.org; Wed, 22 Feb 2017 09:05:39 +0000
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
 <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
 <20170215115104.qez5tgbsvwt3zxzz@pengutronix.de>
 <e77ad532-0850-45a7-d41e-90e83b655dbf@eurekelettronica.it>
 <20170216072801.sh3byseyh3f6osgg@pengutronix.de>
 <067eac64-0c28-4012-23bb-813e462d74c2@eurekelettronica.it>
 <1487260229.13536.33.camel@pengutronix.de>
 <638491f2-9946-e9b1-e84e-e9ae05464bcc@eurekelettronica.it>
 <20170222080055.wkham5jaqbidfizl@pengutronix.de>
 <75ff7d5a-8952-590f-c6b4-9fc3d4c17753@eurekelettronica.it>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <1436340e-ad34-f6e2-94e8-33885934fb92@eurekelettronica.it>
Date: Wed, 22 Feb 2017 10:05:08 +0100
MIME-Version: 1.0
In-Reply-To: <75ff7d5a-8952-590f-c6b4-9fc3d4c17753@eurekelettronica.it>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Using LVDS in a iMX6Q/D from Barebox
To: barebox@lists.infradead.org

>>>
>>>>             /* DISPLAY 1280x800 AMPIRE AM1280800N3TZ */
>>>>             am128080n3tz: am1280800n3tz {
>>>>                 clock-frequency = <71000000>;
>>>>                 hactive = <1280>;
>>>>                 vactive = <800>;
>>>>                 hback-porch = <50>;
>>>>                 hfront-porch = <50>;
>>>>                 vback-porch = <5>;
>>>>                 vfront-porch = <5>;
>>>>                 hsync-len = <60>;
>>>>                 vsync-len = <13>;
>>>>                 hsync-active = <0>;
>>>>                 vsync-active = <0>;
>>>>                 de-active = <1>;
>>>>                 pixelclk-active = <0>;
>>>>             };
>>>>             /* DISPLAY 1024x600 AMPIRE AM-1024600LTM LVDS */
>>>>             am1024600l: am1024600l {
>>>>                 clock-frequency = <51200000>;
>>>>                 hactive = <1024>;
>>>>                 vactive = <600>;
>>>>                 hback-porch = <0>;
>>>>                 hfront-porch = <320>;
>>>>                 vback-porch = <0>;
>>>>                 vfront-porch = <35>;
>>>>                 hsync-len = <1>;
>>>>                 vsync-len = <1>;
>>>>                 hsync-active = <0>;
>>>>                 vsync-active = <0>;
>>>>                 de-active = <1>;
>>>>                 pixelclk-active = <0>;
>>>>             };
>>>>             /* DISPLAY 800x480 */
>>>>             ph800480t013: ph800480t013 {
>>>>                 clock-frequency = <33300000>;
>>>>                 hactive = <800>;
>>>>                 vactive = <480>;
>>>>                 hback-porch = <46>;
>>>>                 hfront-porch = <210>;
>>>>                 vback-porch = <23>;
>>>>                 vfront-porch = <22>;
>>>>                 hsync-len = <1>;
>>>>                 vsync-len = <1>;
>>>>                 hsync-active = <0>;
>>>>                 vsync-active = <0>;
>>>>                 de-active = <1>;
>>>>                 pixelclk-active = <0>;
>>>>             };
>>>>         };
>>>>
>>>>         port@4 {
>>>>             reg = <4>;
>>>>             lvds0_out: endpoint {
>>>>                 remote-endpoint = <&in_lvds0>;
>>>>             };
>>>>         };
>>>>
>>>>     };
>>>> };
>>>

> Anyway, now I am doing the same stuff for compatibile property of the
> panel, because Linux wants to have a timing hardcoded in the
> panel-simple instead of getting them from the timing section of the
> device-tree.
>
> This is a very lack of feature to me. But now, it is quicker to use the
> bootloader to compile the correctness of the compatible property to a
> almost-identical-timings found in the panel-simple.c...
>
> The other way is to add a edid chip (@ 0x50) for every panel I add, so
> to let the EDID stuff to discover what is connected or not to the lvds
> board.
>
> This issue can not simply solved in this board, because I do have an
> internal eeprom at address 0x50, but it can not be usable for EDID stuff.
>
> So I have two options:
>
> 1- let the imx-ldb.c code in the kernel to probe (simple-panel and edid)
> and *add* a way to parse the device-tree for adding mode timing property
> using the display-timing stuff. (this means kernel patch)
>
> 2- look for a common timings from an existing displays in simple-panel.c
> and pass them to the compatibile property of the panel in the
> device-tree via bootloader.
>
> The step no.2 is the quickest to me. But the ugliest too. ;-)
>
> Any hint?
> Regards,


Looking at the parallel-display.c (drivers/gpu/drm/imx) in the function 
imx_pd_connector_get_modes() there are 3 ways of defining the 
display-timing:

> 	struct imx_parallel_display *imxpd = con_to_imxpd(connector);
> 	struct device_node *np = imxpd->dev->of_node;
> 	int num_modes = 0;
>

1st mode: getting mode from panel compatibile string, i.e. like having:
	compatible = "innolux,g101ice_l01", "simple-panel";
in the device-tree.


> 	if (imxpd->panel && imxpd->panel->funcs &&
> 	    imxpd->panel->funcs->get_modes) {
> 		num_modes = imxpd->panel->funcs->get_modes(imxpd->panel);
> 		if (num_modes > 0)
> 			return num_modes;
> 	}
>

2nd mode: having a edid eeprom somewhere connected to the parallel 
display on i2c.


> 	if (imxpd->edid) {
> 		drm_mode_connector_update_edid_property(connector, imxpd->edid);
> 		num_modes = drm_add_edid_modes(connector, imxpd->edid);
> 	}
>

3rd mode: parsing the device-tree for a node with display mode of native 
mode property.

> 	if (np) {
> 		struct drm_display_mode *mode = drm_mode_create(connector->dev);
> 		int ret;
>
> 		if (!mode)
> 			return -EINVAL;
>
> 		ret = of_get_drm_display_mode(np, &imxpd->mode,
> 					      &imxpd->bus_flags,
> 					      OF_USE_NATIVE_MODE);
> 		if (ret)
> 			return ret;
>
> 		drm_mode_copy(mode, &imxpd->mode);
> 		mode->type |= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> 		drm_mode_probed_add(connector, mode);
> 		num_modes++;
> 	}
>
> 	return num_modes;


The 3rd option lacks in the imx-ldb.c device drivers.

If added this could be a simple way of using the correct timings in the 
device-tree to pass to panel in ldb device driver.

Any comment?
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
