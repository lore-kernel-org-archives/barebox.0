Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cdaQC-0000pr-HI
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 10:33:27 +0000
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
Date: Tue, 14 Feb 2017 11:32:44 +0100
MIME-Version: 1.0
In-Reply-To: <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 02/10/2017 08:35 AM, Sascha Hauer wrote:
> Hi Gianluca,
>
> On Thu, Feb 09, 2017 at 03:37:41PM +0100, gianluca wrote:
>> Hello,
>> I would like to know if there is a clear way on using the lvds pins to drive
>> a LVDS display in a custom made board, based on iMX6Q (in the near future
>> the iMX6Dual).
>
> I think what you are looking for is of_device_enable_and_register() or
> of_device_enable_and_register_by_name(). You can call it on either the
> lvds device node or the hdmi device node, depending on whether you found
> an EEPROM or not.
>

I think this is not necessary as during boot I can see clearly:

> imx-ipuv3 2400000.ipu: IPUv3H probed
> imx-ipuv3 2800000.ipu: IPUv3H probed
> imx-ldb ldb.10: probe failed: Invalid argument
> imx-hdmi 120000.hdmi: Detected HDMI controller 0x13:0xa:0xa0:0xc1

So barebox is trying to bring-up the imx-ldb but fails.

So I suppose something is wrong in my device tree structure.

The LVDS port is connected to LVDS0_... pins of the iMX6Q SoC.

Here is the snippet of .dts file:

> &ldb {
> 	status = "okay";
>
> 	lvds0: lvds-channel@0 {
> 		fsl,data-mapping = "spwg";
> 		fsl,data-width = <16>;
> 		status = "okay";
>
> 		display-timings {
> 			native-mode = <&am128080n3tz>;
> 			/* DISPLAY 1280x800 AMPIRE AM1280800N3TZ */
> 			am128080n3tz: am1280800n3tz {
> 				clock-frequency = <71000000>;
> 				hactive = <1280>;
> 				vactive = <800>;
> 				hback-porch = <50>;
> 				hfront-porch = <50>;
> 				vback-porch = <5>;
> 				vfront-porch = <5>;
> 				hsync-len = <60>;
> 				vsync-len = <13>;
> 				hsync-active = <0>;
> 				vsync-active = <0>;
> 				de-active = <1>;
> 				pixelclk-active = <1>;
> 			};
> 			/* DISPLAY 1024x600 AMPIRE AM-1024600LTM LVDS */
> 			am1024600l: am1024600l {
> 				clock-frequency = <51200000>;
> 				hactive = <1024>;
> 				vactive = <600>;
> 				hback-porch = <0>;
> 				hfront-porch = <320>;
> 				vback-porch = <0>;
> 				vfront-porch = <35>;
> 				hsync-len = <1>;
> 				vsync-len = <1>;
> 				hsync-active = <0>;
> 				vsync-active = <0>;
> 				de-active = <1>;
> 				pixelclk-active = <0>;
> 			};
> 			/* DISPLAY 800x480 */
> 			ph800480t013: ph800480t013 {
> 				clock-frequency = <33300000>;
> 				hactive = <800>;
> 				vactive = <480>;
> 				hback-porch = <46>;
> 				hfront-porch = <210>;
> 				vback-porch = <23>;
> 				vfront-porch = <22>;
> 				hsync-len = <1>;
> 				vsync-len = <1>;
> 				hsync-active = <0>;
> 				vsync-active = <0>;
> 				de-active = <1>;
> 				pixelclk-active = <0>;
> 			};
> 		};
>
> 		port@4 {
> 			reg = <4>;
> 			lvds0_out: endpoint {
> 				remote-endpoint = <&panel_in_lvds0>;
> 			};
> 		};
>
> 	};
> };
>

I was thinking of changing the node 'native-mode' in the init scripts 
depending on the data read from a special eeprom (like EDID stuff).
Is this correct?

Here is the panel section:

> 	panel_lvds0 {
> 		backlight = <&backlight_lvds>;
> 		port {
> 			panel_in_lvds0: endpoint {
> 				remote-endpoint = <&lvds0_out>;
> 			};
> 		};
> 	};

And finally the backlight_lvds section:

> 	backlight_lvds: backlight-lvds {
> 		pinctrl-names = "default";
> 		pinctrl-0 = <&pinctrl_backlight>;
> 		compatible = "pwm-backlight";
> 		pwms = <&pwm1 0 5000000>;
> 		brightness-levels = <0 4 8 16 32 64 128 255>;
> 		default-brightness-level = <6>;
> 		power-supply = <&reg_3p3v>;
> 		status = "okay";
> 	};

With the pinctrl_backlight defined as:

> 		pinctrl_backlight: backlightgrp {
> 			fsl,pins = <
> 				MX6QDL_PAD_SD1_DAT3__PWM1_OUT			0x80000000
> 			>;
> 		};

How to proceed further? I would like to have some useful debug 
information (if any) on device driver probing...

Best Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
