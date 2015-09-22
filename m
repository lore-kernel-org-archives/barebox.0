Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeOGE-000408-T6
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 14:09:35 +0000
Received: by wicge5 with SMTP id ge5so163348098wic.0
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 07:09:13 -0700 (PDT)
Date: Tue, 22 Sep 2015 16:09:11 +0200
Message-Id: <87d1xak0l4.fsf@gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <20150921181338.GI7858@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: BUG, i.MX: broken LVDS display
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

I first applied your 3 patches to 2015.09.0 with my old device tree. I
applied your suggest device tree change, now my device tree looks like this:

/ {
    ...
    panel: panel {
        compatible = "ampire,am800480r3tmqwa1h", "simple-panel";
        /* enable-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>; */
        /* backlight = <&backlight>; */

        port {
                panel_in: endpoint {
                        remote-endpoint = <&lvds0_out>;
                };
        };
    };
};

&ldb {
    status = "okay";

    lvds-channel@0 {
        status = "okay";
        /* crtc = "ipu1-di0"; */
        fsl,data-mapping = "spwg";
        fsl,data-width = <18>;
        /* primary; */

        /* display-timings { */
        /*  native-mode = <&timing0>; */
        /*  timing0: AM-800600K1TMQW-01H-B { */
        /*      // dot clock: 40 - 50 MHz */
        /*         clock-frequency = <39701664>; // 72 Hz */
        /*      hactive = <800>; */
        /*      vactive = <600>; */
        /*      hsync-len = <3>;      // 1 - 40 */
        /*      hback-porch = <46>;   // 46 */
        /*      hfront-porch = <18>;  // 16 - 354 */
        /*      vsync-len = <10>;     // 1 - 29 */
        /*      vback-porch = <23>;   // 23 */
        /*      vfront-porch = <3>;   // 1 - 77 */
        /*      hsync-active = <1>; */
        /*  }; */
        /* }; */

        port@1 {
            reg = <1>;

            lvds0_out: endpoint {
                remote-endpoint = <&panel_in>;
            };
        };
    };
};

I disable the GPIO and Backlight stuff because on my device neither of this
is needed (backlight is handled by some microcontroller, yuck).

I also added CONFIG_SIMPLE_PANEL=y, CONFIG_DRIVER_VIDEO_EDID=y,
CONFIG_DRIVER_VIDEO_BACKLIGHT=y. I hadn't enabled before, without the last
two I get a compilation error.

My /env/bin/init contains this

splash -x 550 -y 500 -b 0xffffff /env/logo.png
fb0.enable=1

With that, I didn't get any video output. When I run "dmesg", I see
(relevant parts):

imx-ipuv3 2400000.ipu: IPUv3H probed
imx-ipuv3 2800000.ipu: IPUv3H probed
Console activated
...
imx-ipuv3-crtc imx-ipuv3-crtc0: register vpl for /soc/ipu@02400000
imx-ipuv3-crtc imx-ipuv3-crtc1: register vpl for /soc/ipu@02400000
imx-ipuv3-crtc imx-ipuv3-crtc2: register vpl for /soc/ipu@02800000
imx-ipuv3-crtc imx-ipuv3-crtc3: register vpl for /soc/ipu@02800000
running /env/bin/init...
VPL: vpl_ioctl: no port 4 on /soc/aips-bus@02000000/ldb@020e0008
/lvds-channel@0
imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->xres: 800
imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->yres: 600
VPL: vpl_ioctl: no port 4 on /soc/aips-bus@02000000/ldb@020e0008
/lvds-channel@0


And finally I also tried to to change "port@1"/"reg = <1>" to "port@4" /
"reg = <4>", but again to no avail:

imx-ipuv3 2400000.ipu: IPUv3H probed
imx-ipuv3 2800000.ipu: IPUv3H probed
Console activated
...
imx-ipuv3-crtc imx-ipuv3-crtc0: register vpl for /soc/ipu@02400000
imx-ipuv3-crtc imx-ipuv3-crtc0: probe failed: No such file or directory
imx-ipuv3-crtc imx-ipuv3-crtc1: register vpl for /soc/ipu@02400000
imx-ipuv3-crtc imx-ipuv3-crtc1: probe failed: No such file or directory
imx-ipuv3-crtc imx-ipuv3-crtc2: register vpl for /soc/ipu@02800000
imx-ipuv3-crtc imx-ipuv3-crtc2: probe failed: No such file or directory
imx-ipuv3-crtc imx-ipuv3-crtc3: register vpl for /soc/ipu@02800000
imx-ipuv3-crtc imx-ipuv3-crtc3: probe failed: No such file or directory
running /env/bin/init...


So I wonder where exactly barebox get's the timings on the GuF Vincell for
the Ampire display?   Probably the GuF board only sets up the display for
Linux, but doesn't in itself activate the framebuffer?  I grepped for
"Ampire" in Barebox git, and none of the files
(dts/Bindings/panel/ampire,am800480r3tmqwa1h.txt,
dts/Bindings/vendor-prefixes.txt, arch/arm/dts/imx53-guf-vincell.dts) seems
to contain any timings, so Barebox possibly cannot know how to setup the
timings ?!?!   To the best of my knowledge, the display doesn't have i2c
and therefore no EDID, and in my hardware there isn't any i2c going to the
display anyway.


But even when I re-enable the uncommented timings section, I won't get any
output. And also even with the totally unmodified DTS (which works for
barebox 2015.08.0 and also for Linux 4.18.21) which included the timings
barebox doesn't show me the splash.


If you wish, I could do the test with barebox.git as well.


Holger

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
