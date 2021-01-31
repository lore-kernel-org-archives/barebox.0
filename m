Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6JBP-0004CX-3W
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 20:18:58 +0000
Received: from geraet.fritz.box (unknown [87.123.110.69])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 095262000A
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2021 20:18:53 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 31 Jan 2021 21:18:43 +0100
Message-Id: <20210131201846.3440477-5-ahmad@a3f.at>
In-Reply-To: <20210131201846.3440477-1-ahmad@a3f.at>
References: <20210131201846.3440477-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/7] sound: add SDL 2.0 sound driver
To: barebox@lists.infradead.org

SDL 2.0.4 features SDL_QueueAudio, which we could use to just queue
buffers for audio playback. Use it to implement the new sound API for
the sandbox architecture.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/configs/sandbox_defconfig        |  1 +
 arch/sandbox/dts/sandbox.dts                  |  4 +
 .../sandbox/mach-sandbox/include/mach/linux.h |  5 ++
 arch/sandbox/os/sdl.c                         | 44 ++++++++++
 drivers/sound/Kconfig                         |  5 ++
 drivers/sound/Makefile                        |  1 +
 drivers/sound/sdl.c                           | 87 +++++++++++++++++++
 7 files changed, 147 insertions(+)
 create mode 100644 drivers/sound/sdl.c

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index ca24d81acac7..66fcfbdbd0a3 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -107,6 +107,7 @@ CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_SOUND=y
 CONFIG_MFD_SYSCON=y
 CONFIG_STATE_DRV=y
 CONFIG_UBOOTVAR=y
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index afe48154c488..ef1fa7b8661f 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -94,4 +94,8 @@ barebox,sandbox-power
 		compatible = "barebox,sandbox-watchdog";
 		barebox,reset-source = <&stickypage 0>;
 	};
+
+	sound {
+		compatible = "barebox,sandbox-sound";
+	};
 };
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index c636a9af9cd2..6e10fdbe6d80 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -49,6 +49,11 @@ int sdl_video_open(const struct sdl_fb_info *);
 void sdl_video_pause(void);
 void sdl_video_close(void);
 
+int sdl_sound_init(unsigned sample_rate);
+int sdl_sound_play(const void *data, unsigned nsamples);
+void sdl_sound_stop(void);
+void sdl_sound_close(void);
+
 struct ft2232_bitbang;
 struct ft2232_bitbang *barebox_libftdi1_open(int vendor_id, int device_id,
 						const char *serial);
diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
index 623e24cf0b26..13178abfc044 100644
--- a/arch/sandbox/os/sdl.c
+++ b/arch/sandbox/os/sdl.c
@@ -111,3 +111,47 @@ quit_subsystem:
 
 	return -1;
 }
+
+static SDL_AudioDeviceID dev;
+
+int sdl_sound_init(unsigned sample_rate)
+{
+	SDL_AudioSpec audiospec = {
+		.freq = sample_rate,
+		.format = AUDIO_S16,
+		.channels = 1,
+		.samples = 2048,
+	};
+
+	if (SDL_InitSubSystem(SDL_INIT_AUDIO) < 0) {
+		sdl_perror("initialize SDL Audio");
+		return -1;
+	}
+
+	dev = SDL_OpenAudioDevice(NULL, 0, &audiospec, NULL, 0);
+	if (!dev) {
+		sdl_perror("initialize open audio device");
+		SDL_QuitSubSystem(SDL_INIT_AUDIO);
+		return -1;
+	}
+
+	SDL_PauseAudioDevice(dev, 0);
+	return 0;
+}
+
+void sdl_sound_close(void)
+{
+	SDL_QuitSubSystem(SDL_INIT_AUDIO);
+}
+
+int sdl_sound_play(const void *data, unsigned nsamples)
+{
+	/* core sound support handles all the queueing for us */
+	SDL_ClearQueuedAudio(dev);
+	return SDL_QueueAudio(dev, data, nsamples * sizeof(uint16_t));
+}
+
+void sdl_sound_stop(void)
+{
+	SDL_ClearQueuedAudio(dev);
+}
diff --git a/drivers/sound/Kconfig b/drivers/sound/Kconfig
index d9f63a5f3c55..889657305b0b 100644
--- a/drivers/sound/Kconfig
+++ b/drivers/sound/Kconfig
@@ -9,6 +9,11 @@ menuconfig SOUND
 
 if SOUND
 
+config SOUND_SDL
+	bool "SDL sound driver for sandbox"
+	depends on SANDBOX && OFDEVICE
+	select SDL
+
 config SYNTH_SQUARES
 	bool "Synthesize square waves only"
 	help
diff --git a/drivers/sound/Makefile b/drivers/sound/Makefile
index 69873faab985..692105fd6b59 100644
--- a/drivers/sound/Makefile
+++ b/drivers/sound/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y += core.o synth.o
+obj-$(CONFIG_SOUND_SDL)		+= sdl.o
diff --git a/drivers/sound/sdl.c b/drivers/sound/sdl.c
new file mode 100644
index 000000000000..118d7742955f
--- /dev/null
+++ b/drivers/sound/sdl.c
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <errno.h>
+#include <driver.h>
+#include <mach/linux.h>
+#include <linux/time.h>
+#include <linux/math64.h>
+#include <of.h>
+#include <sound.h>
+
+#define AMPLITUDE	28000
+#define SAMPLERATE	44000ULL
+
+struct sandbox_sound {
+	struct sound_card card;
+};
+
+static int sandbox_sound_beep(struct sound_card *card, unsigned freq, unsigned duration)
+{
+    size_t nsamples = div_s64(SAMPLERATE * duration, USEC_PER_SEC);
+    int16_t *data;
+    int ret;
+
+    if (!freq) {
+	    sdl_sound_stop();
+	    return 0;
+    }
+
+    data = malloc(nsamples * sizeof(*data));
+    if (!data)
+	    return -ENOMEM;
+
+    synth_sin(freq, AMPLITUDE, data, SAMPLERATE, nsamples);
+    ret = sdl_sound_play(data, nsamples);
+    if (ret)
+	    ret = -EIO;
+    free(data);
+
+    return ret;
+}
+
+static int sandbox_sound_probe(struct device_d *dev)
+{
+	struct sandbox_sound *priv;
+	struct sound_card *card;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	card = &priv->card;
+	card->name = "SDL-Audio";
+	card->beep = sandbox_sound_beep;
+
+	ret = sdl_sound_init(SAMPLERATE);
+	if (ret) {
+		ret = -ENODEV;
+		goto free_priv;
+	}
+
+	ret = sound_card_register(card);
+	if (ret)
+		goto sdl_sound_close;
+
+	dev_info(dev, "probed\n");
+	return 0;
+
+sdl_sound_close:
+	sdl_sound_close();
+free_priv:
+	free(priv);
+
+	return ret;
+}
+
+
+static __maybe_unused struct of_device_id sandbox_sound_dt_ids[] = {
+	{ .compatible = "barebox,sandbox-sound" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d sandbox_sound_drv = {
+	.name  = "sandbox-sound",
+	.of_compatible = sandbox_sound_dt_ids,
+	.probe = sandbox_sound_probe,
+};
+device_platform_driver(sandbox_sound_drv);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
