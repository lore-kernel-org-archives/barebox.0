Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cdwVT-00026M-NV
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 10:08:19 +0000
References: <3a707429-03a7-db6b-a1b1-1e70ec0b929e@eurekelettronica.it>
 <20170210073541.73bsfjhk3fu7nnwm@pengutronix.de>
 <e2e3ab47-9cbd-0437-d889-a98704459d1b@eurekelettronica.it>
 <814412dc-f364-70cb-43a9-f9e971a0b3c1@eurekelettronica.it>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <0d5e9302-c7d3-f8de-c5bc-970c9b197532@eurekelettronica.it>
Date: Wed, 15 Feb 2017 11:07:50 +0100
MIME-Version: 1.0
In-Reply-To: <814412dc-f364-70cb-43a9-f9e971a0b3c1@eurekelettronica.it>
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

On 02/14/2017 11:59 AM, gianluca wrote:
> On 02/14/2017 11:32 AM, gianluca wrote:
>> On 02/10/2017 08:35 AM, Sascha Hauer wrote:
>>> Hi Gianluca,
>>>
>>> On Thu, Feb 09, 2017 at 03:37:41PM +0100, gianluca wrote:
>>>> Hello,
>>>> I would like to know if there is a clear way on using the lvds pins
>>>> to drive
>>>> a LVDS display in a custom made board, based on iMX6Q (in the near
>>>> future
>>>> the iMX6Dual).
>>>
>>> I think what you are looking for is of_device_enable_and_register() or
>>> of_device_enable_and_register_by_name(). You can call it on either the
>>> lvds device node or the hdmi device node, depending on whether you found
>>> an EEPROM or not.
>>>
>>
>> I think this is not necessary as during boot I can see clearly:
>>
>>> imx-ipuv3 2400000.ipu: IPUv3H probed
>>> imx-ipuv3 2800000.ipu: IPUv3H probed
>>> imx-ldb ldb.10: probe failed: Invalid argument
>>> imx-hdmi 120000.hdmi: Detected HDMI controller 0x13:0xa:0xa0:0xc1
>>
>
> I had a wrong configuration:
>
>>
>>> &ldb {
>>>     status = "okay";
>>>
>>>     lvds0: lvds-channel@0 {
>>>         fsl,data-mapping = "spwg";
>>>         fsl,data-width = <16>;
>>>         status = "okay";
>>>
>
> fsl,data-width = must be <18> or <24>
>
> Now boots without error, but the framebuffer device is not registered.
> Why? I need something more??
>
>

Now I did a little step forward. Using the DEBUG_VERBOSE #define 
somewhere in the hdmi, ldb and pb device drivers I can see what is 
happening:

>
>
> barebox 2017.02.0 #20 Tue Feb 14 17:24:52 CET 2017
>
>
> Board: Eurek EK360 i.MX6Q/D
> detected i.MX6 Quad revision 1.5
> mdio_bus: miibus0: probed
> imx-usb 2184000.usb: Cannot get phy: Function not implemented
> imx-usb 2184000.usb: probe failed: Function not implemented
> imx-usb 2184200.usb: Cannot get phy: Function not implemented
> imx-usb 2184200.usb: probe failed: Function not implemented

Not a problem here as I am running from usb device with no 
flash-programmed-on-board. ;-)

> imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
> imx-esdhc 2198000.usdhc: registered as 2198000.usdhc
> imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
> imx-ipuv3 2400000.ipu: IPUv3H probed
> imx-ipuv3 2800000.ipu: IPUv3H probed
> VPL: vpl_register: /soc/aips-bus@02000000/ldb@020e0008/lvds-channel@0
> imx-hdmi 120000.hdmi: Detected HDMI controller 0x13:0xa:0xa0:0xc1

> VPL: vpl_register: /soc/hdmi@0120000

Which driver is calling this vpl_register? I can not clue by the 
previous outputs... :-/


> netconsole: registered as netconsole-1
> malloc space: 0x2ff7b640 -> 0x4fef6c7f (size 511.5 MiB)

> imx-ipuv3-crtc imx-ipuv3-crtc0: i.MX Framebuffer driver IPU
> imx-ipuv3-crtc imx-ipuv3-crtc0: register vpl for /soc/ipu@02400000
> VPL: vpl_register: /soc/ipu@02400000
> VPL: vpl_ioctl: /soc/ipu@02400000 port 2
> VPL: vpl_ioctl: no remote for endpoint /soc/ipu@02400000/port@2/disp0-endpoint
> imx-ipuv3-crtc imx-ipuv3-crtc0: failed to get modes: Invalid argument
> imx-ipuv3-crtc imx-ipuv3-crtc0: probe failed: Invalid argument

CRTC0 - Now the vpl_ioctl is failing because of no modes (or no 
disp0-endpoint).
Why? In the dts there the video-timings in the ldb section

> imx-ipuv3-crtc imx-ipuv3-crtc1: i.MX Framebuffer driver IPU
> imx-ipuv3-crtc imx-ipuv3-crtc1: register vpl for /soc/ipu@02400000
> VPL: vpl_register: /soc/ipu@02400000
> VPL: vpl_ioctl: /soc/ipu@02400000 port 3
> VPL: vpl_ioctl: no remote for endpoint /soc/ipu@02400000/port@3/disp1-endpoint
> imx-ipuv3-crtc imx-ipuv3-crtc1: failed to get modes: Invalid argument
> imx-ipuv3-crtc imx-ipuv3-crtc1: probe failed: Invalid argument

CRTC1 - Same issue.

> imx-ipuv3-crtc imx-ipuv3-crtc2: i.MX Framebuffer driver IPU
> imx-ipuv3-crtc imx-ipuv3-crtc2: register vpl for /soc/ipu@02800000
> VPL: vpl_register: /soc/ipu@02800000
> VPL: vpl_ioctl: /soc/ipu@02800000 port 2
> VPL: vpl_ioctl: no remote for endpoint /soc/ipu@02800000/port@2/disp0-endpoint
> imx-ipuv3-crtc imx-ipuv3-crtc2: failed to get modes: Invalid argument
> imx-ipuv3-crtc imx-ipuv3-crtc2: probe failed: Invalid argument

CRTC2 - Same issue

> imx-ipuv3-crtc imx-ipuv3-crtc3: i.MX Framebuffer driver IPU
> imx-ipuv3-crtc imx-ipuv3-crtc3: register vpl for /soc/ipu@02800000
> VPL: vpl_register: /soc/ipu@02800000
> VPL: vpl_ioctl: /soc/ipu@02800000 port 3
> imx-ipuv3-crtc imx-ipuv3-crtc3: failed to get modes: Invalid argument
> imx-ipuv3-crtc imx-ipuv3-crtc3: probe failed: Invalid argument

CRTC3 - Not as the others above, as the vpl_ioctl() no checks/fails for 
endpoint here.

> environment load /dev/env0: No such file or directory
> Maybe you have to create the partition.
> running /env/bin/init...
> Running boot from uSD/MMC or USB...
> mmc2: set parameter probe: Connection timed out
> ext4 ext40: probe failed: Invalid argument
> mount: Invalid argument
> Hit CTRL-C key to stop autoboot:  1

No Framebuffer driver registered. No /dev/fb[0-3] device node created.

I found something interesting: if I connect a HDMI display (with a EDID 
EEPROM) the CRTC0-3 is not failing anymore.

> barebox 2017.02.0 #20 Tue Feb 14 17:24:52 CET 2017
>
>
> Board: Eurek EK360 i.MX6Q/D
> detected i.MX6 Quad revision 1.5
> mdio_bus: miibus0: probed
> imx-usb 2184000.usb: Cannot get phy: Function not implemented
> imx-usb 2184000.usb: probe failed: Function not implemented
> imx-usb 2184200.usb: Cannot get phy: Function not implemented
> imx-usb 2184200.usb: probe failed: Function not implemented
> imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
> imx-esdhc 2198000.usdhc: registered as 2198000.usdhc
> imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
> imx-ipuv3 2400000.ipu: IPUv3H probed
> imx-ipuv3 2800000.ipu: IPUv3H probed
> VPL: vpl_register: /soc/aips-bus@02000000/ldb@020e0008/lvds-channel@0
> imx-hdmi 120000.hdmi: Detected HDMI controller 0x13:0xa:0xa0:0xc1
> VPL: vpl_register: /soc/hdmi@0120000
> netconsole: registered as netconsole-1
> malloc space: 0x2ff7b640 -> 0x4fef6c7f (size 511.5 MiB)
> imx-ipuv3-crtc imx-ipuv3-crtc0: i.MX Framebuffer driver IPU
> imx-ipuv3-crtc imx-ipuv3-crtc0: register vpl for /soc/ipu@02400000
> VPL: vpl_register: /soc/ipu@02400000
> VPL: vpl_ioctl: /soc/ipu@02400000 port 2
> VPL: vpl_ioctl: no remote for endpoint /soc/ipu@02400000/port@2/disp0-endpoint
> registered as fbconsole0

Here it is for CRTC0!!!

> imx-ipuv3-crtc imx-ipuv3-crtc1: i.MX Framebuffer driver IPU
> imx-ipuv3-crtc imx-ipuv3-crtc1: register vpl for /soc/ipu@02400000
> VPL: vpl_register: /soc/ipu@02400000
> VPL: vpl_ioctl: /soc/ipu@02400000 port 3
> VPL: vpl_ioctl: no remote for endpoint /soc/ipu@02400000/port@3/disp1-endpoint
> registered as fbconsole1

Even for CRTC1!

> imx-ipuv3-crtc imx-ipuv3-crtc2: i.MX Framebuffer driver IPU
> imx-ipuv3-crtc imx-ipuv3-crtc2: register vpl for /soc/ipu@02800000
> VPL: vpl_register: /soc/ipu@02800000
> VPL: vpl_ioctl: /soc/ipu@02800000 port 2
> VPL: vpl_ioctl: no remote for endpoint /soc/ipu@02800000/port@2/disp0-endpoint
> registered as fbconsole2

Even for CRTC2

> imx-ipuv3-crtc imx-ipuv3-crtc3: i.MX Framebuffer driver IPU
> imx-ipuv3-crtc imx-ipuv3-crtc3: register vpl for /soc/ipu@02800000
> VPL: vpl_register: /soc/ipu@02800000
> VPL: vpl_ioctl: /soc/ipu@02800000 port 3
> registered as fbconsole3

...and for CRTC3 too.

The display is a 1024x600 7 inches HDMI display.

Here is the devinfo fb[0-3] information:

> barebox@Eurek EK360 i.MX6Q/D:/ devinfo fb0
> Resources:
>   num: 0
>   start: 0x300cd000
>   size: 0x003e8000
> Available modes:
>   am1280800n3tz: 1280x800@0
>   am1024600l: 1024x600@0
>   ph800480t013: 800x480@0
> Parameters:
>   enable: 0
>   mode_name: am1280800n3tz ("am1280800n3tz", "am1024600l", "ph800480t013")
>   register_simplefb: 0
>   shadowfb: 1
> barebox@Eurek EK360 i.MX6Q/D:/ devinfo fb1
> Resources:
>   num: 0
>   start: 0x304b6000
>   size: 0x003e8000
> Available modes:
>   am1280800n3tz: 1280x800@0
>   am1024600l: 1024x600@0
>   ph800480t013: 800x480@0
> Parameters:
>   enable: 0
>   mode_name: am1280800n3tz ("am1280800n3tz", "am1024600l", "ph800480t013")
>   register_simplefb: 0
>   shadowfb: 1
> barebox@Eurek EK360 i.MX6Q/D:/ devinfo fb2
> Resources:
>   num: 0
>   start: 0x308a0000
>   size: 0x003e8000
> Available modes:
>   am1280800n3tz: 1280x800@0
>   am1024600l: 1024x600@0
>   ph800480t013: 800x480@0
> Parameters:
>   enable: 0
>   mode_name: am1280800n3tz ("am1280800n3tz", "am1024600l", "ph800480t013")
>   register_simplefb: 0
>   shadowfb: 1
> barebox@Eurek EK360 i.MX6Q/D:/ devinfo fb3
> Resources:
>   num: 0
>   start: 0x30c89000
>   size: 0x003e8000
> Available modes:
>   am1280800n3tz: 1280x800@0
>   am1024600l: 1024x600@0
>   ph800480t013: 800x480@0
> Parameters:
>   enable: 0
>   mode_name: am1280800n3tz ("am1280800n3tz", "am1024600l", "ph800480t013")
>   register_simplefb: 0
>   shadowfb: 1

It looks like the video-timings/mode are getting from the ldb section of 
the device tree, but activated only when a hdmi display is connected.

Anyway there is a strange value for refresh stuff. It is @0 for every 
display.

In the device tree timing I have those parameters:

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

which more or less is 60Hz every mode.

Can you help me to get out from this situation?

Regards,
Gianluca Renzi
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
