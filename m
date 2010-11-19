Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJQR1-0001co-QI
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 12:51:31 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 19 Nov 2010 13:51:00 +0100
Message-Id: <1290171063-28870-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1290171063-28870-1-git-send-email-jbe@pengutronix.de>
References: <1290171063-28870-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/11] Add doxygen documentation to the framebfuffer code
To: barebox@lists.infradead.org

Add some (hopefully) helpful documentation to the source code.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 Documentation/developers_manual.dox |    1 +
 Documentation/users_manual.dox      |    1 +
 drivers/video/fb.c                  |  202 +++++++++++++++++++++++++++++++++++
 include/fb.h                        |   97 +++++++++++------
 4 files changed, 269 insertions(+), 32 deletions(-)

diff --git a/Documentation/developers_manual.dox b/Documentation/developers_manual.dox
index 2f7d360..69a0872 100644
--- a/Documentation/developers_manual.dox
+++ b/Documentation/developers_manual.dox
@@ -20,5 +20,6 @@ This part of the documentation is intended for developers of @a barebox.
 @li @subpage barebox_simul
 @li @subpage io_access_functions
 @li @subpage mcfv4e_MCDlib
+@li @subpage fb_for_developers
 
 */
diff --git a/Documentation/users_manual.dox b/Documentation/users_manual.dox
index ea47b18..58ec6e9 100644
--- a/Documentation/users_manual.dox
+++ b/Documentation/users_manual.dox
@@ -14,5 +14,6 @@ you find a lot of nice tricks on these pages to make your life easier.
 @li @subpage readline_parser
 @li @subpage x86_bootloader
 @li @subpage net_netconsole
+@li @subpage fb_for_users
 
 */
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index d1ba85a..e330cd1 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -33,6 +33,11 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
 	return 0;
 }
 
+/**
+ * Check if the video output is already enabled
+ * @param fb_dev The framebuffer device to check
+ * @return 0 if the video output is still disabled, -EPERM if enabled
+ */
 static int fb_check_if_already_initialized(struct device_d *fb_dev)
 {
 	struct fb_info *info = to_fb_info(fb_dev);
@@ -46,6 +51,9 @@ static int fb_check_if_already_initialized(struct device_d *fb_dev)
 	return 0;
 }
 
+/**
+ * Change colour depth via device parameter
+ */
 static int fb_cdepth_set(struct device_d *fb_dev, struct param_d *param, const char *val)
 {
 	struct fb_info *info = to_fb_info(fb_dev);
@@ -65,6 +73,9 @@ static int fb_cdepth_set(struct device_d *fb_dev, struct param_d *param, const c
 	return dev_param_set_generic(fb_dev, param, val);
 }
 
+/**
+ * Enable/disable video output via device parameter
+ */
 static int fb_enable_set(struct device_d *fb_dev, struct param_d *param, const char *val)
 {
 	struct fb_info *info = to_fb_info(fb_dev);
@@ -93,6 +104,10 @@ static int fb_enable_set(struct device_d *fb_dev, struct param_d *param, const c
 	return dev_param_set_generic(fb_dev, param, new);
 }
 
+/**
+ * Output the list of supported video modes in this framebuffer
+ * @param host Platformdata of the hardware video device
+ */
 static void fb_list_modes(struct fb_host *host)
 {
 	unsigned u;
@@ -102,6 +117,14 @@ static void fb_list_modes(struct fb_host *host)
 		printf("  '%s'\n", host->mode[u].name);
 }
 
+/**
+ * Call the video hardware driver to initialize the given video mode
+ * @param fb_dev Framebuffer device
+ * @param mode Mode description to initialize
+ * @return 0 on success
+ *
+ * @note This call does not imply enabling the video output device!
+ */
 static int fb_activate_mode(struct device_d *fb_dev, const struct fb_videomode *mode)
 {
 	struct fb_info *info = to_fb_info(fb_dev);
@@ -124,6 +147,13 @@ static int fb_activate_mode(struct device_d *fb_dev, const struct fb_videomode *
 	return 0;
 }
 
+/**
+ * Setup the requested video mode via device parameter
+ * @param dev Device instance
+ * @param param FIXME
+ * @param name Video mode name to activate
+ * @return 0 on success
+ */
 static int fb_mode_set(struct device_d *fb_dev, struct param_d *param, const char *name)
 {
 	struct fb_host *host = fb_dev->platform_data;
@@ -210,6 +240,11 @@ static void fb_info(struct device_d *fb_dev)
 	fb_list_modes(info->host);
 }
 
+/**
+ * Add controlling parameters to the framebuffer device
+ * @param dev Device instance
+ * @return 0 on success
+ */
 static int add_fb_parameter(struct fb_info *info)
 {
 	char cd[10];
@@ -274,6 +309,11 @@ static int framebuffer_init(void)
 
 device_initcall(framebuffer_init);
 
+/**
+ * Create a new framebuffer device
+ * @param pinfo Video device's platform data for this framebuffer device
+ * @return Pointer to the newly created device or NULL on failure
+ */
 struct device_d *register_framebuffer(struct fb_host *host)
 {
 	struct fb_info *fb_info;
@@ -293,3 +333,165 @@ struct device_d *register_framebuffer(struct fb_host *host)
 
 	return &fb_info->fb_dev;
 }
+
+/**
+@page fb_for_users Framebuffer handling for users
+
+@section delayed_fb Framebuffer setup
+
+If the platform supports more than one video output device, its possible to select
+one of the supported ones at runtime. To do so, no videomode setup happens when
+the graphics driver gets registered. The device offers the 'mode' parameter to
+support specifiying the correct output device. But keep in mind that there will
+be also no framebuffer memory until the output video hardware and its videomode
+get specified. This is important to know, if you want to paint some nice splash
+screen.
+
+Running the @b devinfo command on the framebuffer0 device will output:
+@verbatim
+barebox:/ devinfo framebuffer0
+base  : 0x00000000
+size  : 0x00000000
+driver: framebuffer
+
+ Video/Mode info:
+  Video output not enabled
+ Current video mode:
+  No video mode selected yet
+ Supported video mode(s):
+  'QVGA'
+  'VGA'
+Parameters:
+          cdepth = 16
+            mode = <NULL>
+          enable = <NULL>
+@endverbatim
+
+@note As long @b devinfo reports a @b base or @b size of zero there is
+@b no framebuffer memory yet!
+
+This framebuffer device is not initialized yet. As shown in the list, it
+supports two video modes: 'QVGA' and 'VGA'.
+
+So, the user can first specifiy the video output device with (for example)
+@verbatim
+barebox:/ framebuffer0.mode="QVGA"
+@endverbatim
+
+After this the @b devinfo command's output changes to:
+@verbatim
+barebox:/ devinfo framebuffer0
+base  : 0x31fc0000
+size  : 0x00040000
+driver: framebuffer
+
+ Video/Mode info:
+  Video output not enabled
+ Current video mode:
+  Name: QVGA
+  Refresh rate: 60 Hz
+  Horizontal active pixel: 320
+  Vertical active lines: 240
+  Pixel clock: 6500 kHz
+  Left/Right margin (pixel): 20/20
+  Upper/Lower margin (lines): 10/10
+  HSYNC length in pixel: 10, polarity: high
+  VSYNC length in lines: 5, polarity: high
+  Colour depth: 16 bpp
+ Supported video mode(s):
+  'QVGA'
+  'VGA'
+Parameters:
+          cdepth = 16
+            mode = QVGA
+          enable = <NULL>
+@endverbatim
+As one can see, the framebuffer has a @b base, a @b size and a @b mode
+configuration now.
+@note Take care if setting a video mode fails. In this case @b base and @b size
+will kept at zero!
+
+With this setting its possible to paint some kind of image into the framebuffer
+memory and enabling the video output as the final step at runtime
+@verbatim
+barebox:/ framebuffer0.enable=1
+@endverbatim
+The video output is fully enabled now:
+@verbatim
+barebox:/ devinfo framebuffer0
+base  : 0x31fc0000
+size  : 0x00040000
+driver: framebuffer
+
+ Video/Mode info:
+  Video output enabled
+ Current video mode:
+  Name: QVGA
+  Refresh rate: 60 Hz
+  Horizontal active pixel: 320
+  Vertical active lines: 240
+  Pixel clock: 6500 kHz
+  Left/Right margin (pixel): 20/20
+  Upper/Lower margin (lines): 10/10
+  HSYNC length in pixel: 10, polarity: high
+  VSYNC length in lines: 5, polarity: high
+  Colour depth: 16 bpp
+ Supported video mode(s):
+  'QVGA'
+  'VGA'
+Parameters:
+          cdepth = 16
+            mode = QVGA
+          enable = 1
+@endverbatim
+
+@section other_fb_params Other framebuffer parameter
+@verbatim
+framebuffer0.cdepth=[1 | 4 | 8 | 16 | 24 | 32]
+@endverbatim
+
+Colour depth to be used with the framebuffer. Its unit is "bit per pixel" and
+the default value is 16 bits per pixel (means "RGB565" format). This value can
+only be changed if the video output is disabled.
+
+@note The possible values from the list above are hardware dependend.
+
+@note The default colour depth value may also depend on the hardware
+*/
+
+/**
+@page fb_for_developers Framebuffer handling for developers
+
+@section fb_platform_dev For the platform developer
+
+If you provide more than one video output device description use an array of
+this type. In this case the 'mode_cnt' entry must contain the count of existing
+array entries (> 1). Give each video output device description entry an unique
+name, because a user will select the required output device by this name
+at runtime.
+
+@section fb_driver_dev For the video hardware driver developer:
+
+Don't initialize a special video mode in your probe function (e.g. don't
+allocate any framebuffer memory and so on). The framework will call back your
+exported fb_mode() function to do so (immediately or delayed).
+
+Don't enable video output in your probe or exported fb_mode() function. Also
+do not switch on any LCD or backlight if any. The framework will call your
+exported fb_enable() function to do so.
+
+If your hardware cannot handle the default 16 bit colour depth, change the
+'bits_per_pixel' field prior registering your framebuffer.
+
+When your exported fb_mode() function is called, calculate the amount of memory
+you need for the requested video mode and colour depth, save this value to
+framebuffer's info struct in field 'fb_dev->size' and allocate the memory with
+this size for the framebuffer. Store the basepointer to this area into
+framebuffer's info struct in field 'fb_dev->map_base'.
+
+@note To support flickerless splash screen into the Linux kernel, your driver
+should support a fixed framebuffer memory. Fixed in location and size. The platform
+should hold the Linux kernel to not touch this memory in any way. Instead the
+kernel based video hardware driver should inherit the fixed settings.
+
+*/
diff --git a/include/fb.h b/include/fb.h
index a1bd147..7e01e87 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -18,19 +18,27 @@
 					/* vtotal = 121d/242n/484i => NTSC */
 #define FB_SYNC_ON_GREEN	32	/* sync on green */
 /* LC display related settings */
+/** LC display uses active high data enable signal */
 #define FB_SYNC_DE_HIGH_ACT	(1 << 6)
+/** LC display will latch its data at clock's rising edge */
 #define FB_SYNC_CLK_INVERT	(1 << 7)
+/** output RGB data inverted */
 #define FB_SYNC_DATA_INVERT	(1 << 8)
+/** Stop clock if no data is sent (required for passive displays) */
 #define FB_SYNC_CLK_IDLE_EN	(1 << 9)
+/** swap RGB to BGR */
 #define FB_SYNC_SWAP_RGB	(1 << 10)
+/** FIXME */
 #define FB_SYNC_CLK_SEL_EN	(1 << 11)
+/** enable special signals for SHARP displays (_very_ hardware specific) */
 #define FB_SYNC_SHARP_MODE	(1 << 31)
 
-#define FB_VMODE_NONINTERLACED  0	/* non interlaced */
-#define FB_VMODE_INTERLACED	1	/* interlaced	*/
+#define FB_VMODE_NONINTERLACED  0	/** non interlaced */
+#define FB_VMODE_INTERLACED	1	/** interlaced	*/
 #define FB_VMODE_DOUBLE		2	/* double scan */
-#define FB_VMODE_ODD_FLD_FIRST	4	/* interlaced: top line first */
+#define FB_VMODE_ODD_FLD_FIRST	4	/** interlaced: top line first */
 /* LC display related settings */
+/** output two screen parts at once (required for passive displays) */
 #define FB_VMODE_DUAL_SCAN	8
 #define FB_VMODE_MASK		255
 
@@ -42,19 +50,24 @@
 #define KHZ2PICOS(a) (1000000000UL/(a))
 
 struct fb_videomode {
-	const char *name;	/* optional */
-	unsigned refresh;		/* optional */
-	unsigned xres;
-	unsigned yres;
-	unsigned pixclock;
-	unsigned left_margin;
-	unsigned right_margin;
-	unsigned upper_margin;
-	unsigned lower_margin;
-	unsigned hsync_len;
-	unsigned vsync_len;
-	unsigned sync;
-	unsigned vmode;
+	const char *name;	/**< always required and must be unique */
+	unsigned refresh;	/**< frame refresh rate in [Hz] (optional) */
+	unsigned xres;		/**< visible horizontal pixel */
+	unsigned yres;		/**< visible vertical pixel */
+	unsigned pixclock;	/**< pixel clock period in [ps]. Refer
+				     PICOS2KHZ/KHZ2PICOS macros */
+	unsigned left_margin;	/**< distance in pixels between ending active HSYNC
+				     and starting visible line content */
+	unsigned right_margin;	/**< distance in pixels between ending visible line
+				     content and starting active HSYNC */
+	unsigned upper_margin;	/**< distance in lines between ending active VSYNC
+				     and the first line with visible content */
+	unsigned lower_margin;	/**< distance in lines between last line with
+				     visible content and starting active VSYNC */
+	unsigned hsync_len;	/**< HSYNC's active length in pixels */
+	unsigned vsync_len;	/**< VSYNC's active lenght in lines */
+	unsigned sync;		/**< sync information, refer FB_SYNC_* macros */
+	unsigned vmode;		/**< video mode information, refer FB_VMODE_* macros */
 	unsigned flag;
 };
 
@@ -69,18 +82,33 @@ struct fb_videomode {
  * of available palette entries (i.e. # of entries = 1 << length).
  */
 struct fb_bitfield {
-	unsigned offset;		/* beginning of bitfield	*/
-	unsigned length;		/* length of bitfield		*/
-	int msb_right;			/* != 0 : Most significant bit is right */
+	unsigned offset;		/**< beginning of bitfield	*/
+	unsigned length;		/**< length of bitfield		*/
+	int msb_right;			/**< != 0 : Most significant bit is right */
 };
 
 struct fb_info;
 
+/**
+ * Framebuffer device's platform information
+ *
+ * The video hardware driver must set the following fields:
+ * - 'fb_mode' function to setup a specific video mode
+ * - 'fb_enable' function to activate the video output
+ * - 'fb_disable' function to deactivate the video output
+ * - 'fb_setcolreg' function to ???????? FIXME
+ *
+ * The video hardware driver can set default values for the following fields:
+ * - 'mode' if the driver supports only specific video modes.
+ * - 'mode_cnt' must be set, if 'mode_list' is given
+ * - 'bits_per_pixel' if the video hardware driver defaults to another bpp than 16
+ */
 struct fb_host {
-	const struct fb_videomode *mode;
-	unsigned mode_cnt;
+	/* information about possible video mode(s) */
+	const struct fb_videomode *mode;	/**< Array of modes */
+	unsigned mode_cnt;		/**< count of entries in 'mode'. */
 
-	struct device_d *hw_dev;
+	struct device_d *hw_dev;	/**< the host device */
 
 	/* callbacks into the video hardware driver */
 	int (*fb_setcolreg)(struct fb_info*, unsigned, unsigned, unsigned, unsigned, unsigned);
@@ -88,25 +116,30 @@ struct fb_host {
 	void (*fb_enable)(struct fb_info*);
 	void (*fb_disable)(struct fb_info*);
 
-	unsigned bits_per_pixel;
+	unsigned bits_per_pixel;	/**< default bpp, 0 = use framebuffer's default */
 };
 
+/**
+ * Framebuffer's runtime information
+ */
 struct fb_info {
-	struct fb_host *host;
-	struct device_d fb_dev;
+	struct fb_host *host;		/**< host data this fb is based on */
+	struct device_d fb_dev;		/**< the framebuffer device */
 	struct cdev cdev;
+	/* information about current video mode */
+	/** the currently active video mode if set. Can be NULL = no video mode set yet */
 	const struct fb_videomode *active_mode;
 
-	unsigned xres;			/* visible resolution		*/
-	unsigned yres;
-	unsigned bits_per_pixel;	/* guess what			*/
+	unsigned xres;			/**< visible horizontal pixel count */
+	unsigned yres;			/**< visible vertical line count */
+	unsigned bits_per_pixel;	/**< visible colour depth */
 
-	int grayscale;			/* != 0 Graylevels instead of colors */
+	int grayscale;			/**< != 0 Graylevels instead of colors */
 
-	struct fb_bitfield red;		/* bitfield in fb mem if true color, */
-	struct fb_bitfield green;	/* else only length is significant */
+	struct fb_bitfield red;		/**< bitfield in fb mem if true color, */
+	struct fb_bitfield green;	/**< else only length is significant */
 	struct fb_bitfield blue;
-	struct fb_bitfield transp;	/* transparency			*/
+	struct fb_bitfield transp;	/**< transparency */
 
 	int enabled;
 };
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
