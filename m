Delivery-date: Fri, 27 Sep 2024 12:43:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RY-003N44-1m
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RK-0005mg-Ek
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6djYQjVnsf6j9lv/pevthtMAr6HXB0MvFNspHz8LH+8=; b=ryDc7icDjzJN1r/Fgmm9a7BCpm
	SU/kNx9vxHE7p/HaN6V77QW7jER57hlNpNiJz1EBwITjweVQG/cxqHX1xwV2zGhe6QpEw2yXl/+Hn
	f3MB7Yaq6GKe53ri7eazNm+uI2BiugK52LxVzU5y1PImmxNEUILTFiYy8XVRH5gHSJgDw2SHVgb6p
	XFZ2ad1zRVFuuwkE0+KBjXuK0YzYzYexFNrXO687kOCbQcO0gcPneSJv0K36e9gzJsN/EBGBiVrax
	o3NXM5IQCYeYGET5sr5N5ZYC8xEOXoMirJjs2FLqO5kRcwBsdl1x+hqPd0lWZxi+VuIpYW/35YV6y
	kU+sq1SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QB-0000000AqiV-2goU;
	Fri, 27 Sep 2024 10:41:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ly-0000000ApvK-2vRl
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:37:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-0002d2-QZ; Fri, 27 Sep 2024 12:37:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-001tz2-2N; Fri, 27 Sep 2024 12:37:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1O;
	Fri, 27 Sep 2024 12:37:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-5-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=16204;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=A3Ajykg3EDsi4gKV7BXWHC8Kvd8FfFUOmTKr9TCZGZo=;
 b=7bBT6rdF+p5ZlAWuyCuvHX74W+boWigR5ZRPcO7HtCX4vtnlOJaY3aIwgENaAVOEPEf/NcJ7n
 WlSawld7CRgBU4lZ2njkzgR/gE0ScBbXJkxAoTkqj95Mhg0uLd63fMg
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_033739_260603_7C06802B 
X-CRM114-Status: GOOD (  31.19  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/15] video: add include/video/drm/drm_connector.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

drm_connector.h from Linux contains several defines and struct
types useful for porting over DRM drivers to barebox. This is
based on Linux-6.10.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/video/drm/drm_connector.h | 502 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 502 insertions(+)

diff --git a/include/video/drm/drm_connector.h b/include/video/drm/drm_connector.h
new file mode 100644
index 0000000000..53ec7d3b79
--- /dev/null
+++ b/include/video/drm/drm_connector.h
@@ -0,0 +1,502 @@
+/*
+ * Copyright (c) 2016 Intel Corporation
+ *
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that copyright
+ * notice and this permission notice appear in supporting documentation, and
+ * that the name of the copyright holders not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  The copyright holders make no representations
+ * about the suitability of this software for any purpose.  It is provided "as
+ * is" without express or implied warranty.
+ *
+ * THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
+ * INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
+ * EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL, INDIRECT OR
+ * CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
+ * DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
+ * TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
+ * OF THIS SOFTWARE.
+ */
+
+#ifndef __DRM_CONNECTOR_H__
+#define __DRM_CONNECTOR_H__
+
+#include <uapi/drm/drm_mode.h>
+
+enum drm_connector_force {
+	DRM_FORCE_UNSPECIFIED,
+	DRM_FORCE_OFF,
+	DRM_FORCE_ON,         /* force on analog part normally */
+	DRM_FORCE_ON_DIGITAL, /* for DVI-I use digital connector */
+};
+
+/**
+ * enum drm_connector_status - status for a &drm_connector
+ *
+ * This enum is used to track the connector status. There are no separate
+ * #defines for the uapi!
+ */
+enum drm_connector_status {
+	/**
+	 * @connector_status_connected: The connector is definitely connected to
+	 * a sink device, and can be enabled.
+	 */
+	connector_status_connected = 1,
+	/**
+	 * @connector_status_disconnected: The connector isn't connected to a
+	 * sink device which can be autodetect. For digital outputs like DP or
+	 * HDMI (which can be realiable probed) this means there's really
+	 * nothing there. It is driver-dependent whether a connector with this
+	 * status can be lit up or not.
+	 */
+	connector_status_disconnected = 2,
+	/**
+	 * @connector_status_unknown: The connector's status could not be
+	 * reliably detected. This happens when probing would either cause
+	 * flicker (like load-detection when the connector is in use), or when a
+	 * hardware resource isn't available (like when load-detection needs a
+	 * free CRTC). It should be possible to light up the connector with one
+	 * of the listed fallback modes. For default configuration userspace
+	 * should only try to light up connectors with unknown status when
+	 * there's not connector with @connector_status_connected.
+	 */
+	connector_status_unknown = 3,
+};
+
+/**
+ * struct drm_scrambling: sink's scrambling support.
+ */
+struct drm_scrambling {
+	/**
+	 * @supported: scrambling supported for rates > 340 Mhz.
+	 */
+	bool supported;
+	/**
+	 * @low_rates: scrambling supported for rates <= 340 Mhz.
+	 */
+	bool low_rates;
+};
+
+/*
+ * struct drm_scdc - Information about scdc capabilities of a HDMI 2.0 sink
+ *
+ * Provides SCDC register support and capabilities related information on a
+ * HDMI 2.0 sink. In case of a HDMI 1.4 sink, all parameter must be 0.
+ */
+struct drm_scdc {
+	/**
+	 * @supported: status control & data channel present.
+	 */
+	bool supported;
+	/**
+	 * @read_request: sink is capable of generating scdc read request.
+	 */
+	bool read_request;
+	/**
+	 * @scrambling: sink's scrambling capabilities
+	 */
+	struct drm_scrambling scrambling;
+};
+
+/**
+ * struct drm_hdmi_dsc_cap - DSC capabilities of HDMI sink
+ *
+ * Describes the DSC support provided by HDMI 2.1 sink.
+ * The information is fetched fom additional HFVSDB blocks defined
+ * for HDMI 2.1.
+ */
+struct drm_hdmi_dsc_cap {
+	/** @v_1p2: flag for dsc1.2 version support by sink */
+	bool v_1p2;
+
+	/** @native_420: Does sink support DSC with 4:2:0 compression */
+	bool native_420;
+
+	/**
+	 * @all_bpp: Does sink support all bpp with 4:4:4: or 4:2:2
+	 * compressed formats
+	 */
+	bool all_bpp;
+
+	/**
+	 * @bpc_supported: compressed bpc supported by sink : 10, 12 or 16 bpc
+	 */
+	u8 bpc_supported;
+
+	/** @max_slices: maximum number of Horizontal slices supported by */
+	u8 max_slices;
+
+	/** @clk_per_slice : max pixel clock in MHz supported per slice */
+	int clk_per_slice;
+
+	/** @max_lanes : dsc max lanes supported for Fixed rate Link training */
+	u8 max_lanes;
+
+	/** @max_frl_rate_per_lane : maximum frl rate with DSC per lane */
+	u8 max_frl_rate_per_lane;
+
+	/** @total_chunk_kbytes: max size of chunks in KBs supported per line*/
+	u8 total_chunk_kbytes;
+};
+
+/**
+ * struct drm_hdmi_info - runtime information about the connected HDMI sink
+ *
+ * Describes if a given display supports advanced HDMI 2.0 features.
+ * This information is available in CEA-861-F extension blocks (like HF-VSDB).
+ */
+struct drm_hdmi_info {
+	/** @scdc: sink's scdc support and capabilities */
+	struct drm_scdc scdc;
+
+	/**
+	 * @y420_vdb_modes: bitmap of modes which can support ycbcr420
+	 * output only (not normal RGB/YCBCR444/422 outputs). The max VIC
+	 * defined by the CEA-861-G spec is 219, so the size is 256 bits to map
+	 * up to 256 VICs.
+	 */
+	unsigned long y420_vdb_modes[BITS_TO_LONGS(256)];
+
+	/**
+	 * @y420_cmdb_modes: bitmap of modes which can support ycbcr420
+	 * output also, along with normal HDMI outputs. The max VIC defined by
+	 * the CEA-861-G spec is 219, so the size is 256 bits to map up to 256
+	 * VICs.
+	 */
+	unsigned long y420_cmdb_modes[BITS_TO_LONGS(256)];
+
+	/** @y420_dc_modes: bitmap of deep color support index */
+	u8 y420_dc_modes;
+
+	/** @max_frl_rate_per_lane: support fixed rate link */
+	u8 max_frl_rate_per_lane;
+
+	/** @max_lanes: supported by sink */
+	u8 max_lanes;
+
+	/** @dsc_cap: DSC capabilities of the sink */
+	struct drm_hdmi_dsc_cap dsc_cap;
+};
+
+/**
+ * enum drm_panel_orientation - panel_orientation info for &drm_display_info
+ *
+ * This enum is used to track the (LCD) panel orientation. There are no
+ * separate #defines for the uapi!
+ *
+ * @DRM_MODE_PANEL_ORIENTATION_UNKNOWN: The drm driver has not provided any
+ *					panel orientation information (normal
+ *					for non panels) in this case the "panel
+ *					orientation" connector prop will not be
+ *					attached.
+ * @DRM_MODE_PANEL_ORIENTATION_NORMAL:	The top side of the panel matches the
+ *					top side of the device's casing.
+ * @DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP: The top side of the panel matches the
+ *					bottom side of the device's casing, iow
+ *					the panel is mounted upside-down.
+ * @DRM_MODE_PANEL_ORIENTATION_LEFT_UP:	The left side of the panel matches the
+ *					top side of the device's casing.
+ * @DRM_MODE_PANEL_ORIENTATION_RIGHT_UP: The right side of the panel matches the
+ *					top side of the device's casing.
+ */
+enum drm_panel_orientation {
+	DRM_MODE_PANEL_ORIENTATION_UNKNOWN = -1,
+	DRM_MODE_PANEL_ORIENTATION_NORMAL = 0,
+	DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP,
+	DRM_MODE_PANEL_ORIENTATION_LEFT_UP,
+	DRM_MODE_PANEL_ORIENTATION_RIGHT_UP,
+};
+
+/**
+ * enum drm_bus_flags - bus_flags info for &drm_display_info
+ *
+ * This enum defines signal polarities and clock edge information for signals on
+ * a bus as bitmask flags.
+ *
+ * The clock edge information is conveyed by two sets of symbols,
+ * DRM_BUS_FLAGS_*_DRIVE_\* and DRM_BUS_FLAGS_*_SAMPLE_\*. When this enum is
+ * used to describe a bus from the point of view of the transmitter, the
+ * \*_DRIVE_\* flags should be used. When used from the point of view of the
+ * receiver, the \*_SAMPLE_\* flags should be used. The \*_DRIVE_\* and
+ * \*_SAMPLE_\* flags alias each other, with the \*_SAMPLE_POSEDGE and
+ * \*_SAMPLE_NEGEDGE flags being equal to \*_DRIVE_NEGEDGE and \*_DRIVE_POSEDGE
+ * respectively. This simplifies code as signals are usually sampled on the
+ * opposite edge of the driving edge. Transmitters and receivers may however
+ * need to take other signal timings into account to convert between driving
+ * and sample edges.
+ */
+enum drm_bus_flags {
+	/**
+	 * @DRM_BUS_FLAG_DE_LOW:
+	 *
+	 * The Data Enable signal is active low
+	 */
+	DRM_BUS_FLAG_DE_LOW = BIT(0),
+
+	/**
+	 * @DRM_BUS_FLAG_DE_HIGH:
+	 *
+	 * The Data Enable signal is active high
+	 */
+	DRM_BUS_FLAG_DE_HIGH = BIT(1),
+
+	/**
+	 * @DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE:
+	 *
+	 * Data is driven on the rising edge of the pixel clock
+	 */
+	DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE = BIT(2),
+
+	/**
+	 * @DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE:
+	 *
+	 * Data is driven on the falling edge of the pixel clock
+	 */
+	DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE = BIT(3),
+
+	/**
+	 * @DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE:
+	 *
+	 * Data is sampled on the rising edge of the pixel clock
+	 */
+	DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE = DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+
+	/**
+	 * @DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE:
+	 *
+	 * Data is sampled on the falling edge of the pixel clock
+	 */
+	DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE = DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE,
+
+	/**
+	 * @DRM_BUS_FLAG_DATA_MSB_TO_LSB:
+	 *
+	 * Data is transmitted MSB to LSB on the bus
+	 */
+	DRM_BUS_FLAG_DATA_MSB_TO_LSB = BIT(4),
+
+	/**
+	 * @DRM_BUS_FLAG_DATA_LSB_TO_MSB:
+	 *
+	 * Data is transmitted LSB to MSB on the bus
+	 */
+	DRM_BUS_FLAG_DATA_LSB_TO_MSB = BIT(5),
+
+	/**
+	 * @DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE:
+	 *
+	 * Sync signals are driven on the rising edge of the pixel clock
+	 */
+	DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE = BIT(6),
+
+	/**
+	 * @DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE:
+	 *
+	 * Sync signals are driven on the falling edge of the pixel clock
+	 */
+	DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE = BIT(7),
+
+	/**
+	 * @DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE:
+	 *
+	 * Sync signals are sampled on the rising edge of the pixel clock
+	 */
+	DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE = DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE,
+
+	/**
+	 * @DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE:
+	 *
+	 * Sync signals are sampled on the falling edge of the pixel clock
+	 */
+	DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE = DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE,
+
+	/**
+	 * @DRM_BUS_FLAG_SHARP_SIGNALS:
+	 *
+	 *  Set if the Sharp-specific signals (SPL, CLS, PS, REV) must be used
+	 */
+	DRM_BUS_FLAG_SHARP_SIGNALS = BIT(8),
+};
+
+/**
+ * struct drm_display_info - runtime data about the connected sink
+ *
+ * Describes a given display (e.g. CRT or flat panel) and its limitations. For
+ * fixed display sinks like built-in panels there's not much difference between
+ * this and &struct drm_connector. But for sinks with a real cable this
+ * structure is meant to describe all the things at the other end of the cable.
+ *
+ * For sinks which provide an EDID this can be filled out by calling
+ * drm_add_edid_modes().
+ */
+struct drm_display_info {
+	/**
+	 * @width_mm: Physical width in mm.
+	 */
+	unsigned int width_mm;
+
+	/**
+	 * @height_mm: Physical height in mm.
+	 */
+	unsigned int height_mm;
+
+	/**
+	 * @bpc: Maximum bits per color channel. Used by HDMI and DP outputs.
+	 */
+	unsigned int bpc;
+
+#define DRM_COLOR_FORMAT_RGB444		(1<<0)
+#define DRM_COLOR_FORMAT_YCBCR444	(1<<1)
+#define DRM_COLOR_FORMAT_YCBCR422	(1<<2)
+#define DRM_COLOR_FORMAT_YCBCR420	(1<<3)
+
+	/**
+	 * @panel_orientation: Read only connector property for built-in panels,
+	 * indicating the orientation of the panel vs the device's casing.
+	 * drm_connector_init() sets this to DRM_MODE_PANEL_ORIENTATION_UNKNOWN.
+	 * When not UNKNOWN this gets used by the drm_fb_helpers to rotate the
+	 * fb to compensate and gets exported as prop to userspace.
+	 */
+	int panel_orientation;
+
+	/**
+	 * @color_formats: HDMI Color formats, selects between RGB and YCrCb
+	 * modes. Used DRM_COLOR_FORMAT\_ defines, which are _not_ the same ones
+	 * as used to describe the pixel format in framebuffers, and also don't
+	 * match the formats in @bus_formats which are shared with v4l.
+	 */
+	u32 color_formats;
+
+	/**
+	 * @bus_formats: Pixel data format on the wire, somewhat redundant with
+	 * @color_formats. Array of size @num_bus_formats encoded using
+	 * MEDIA_BUS_FMT\_ defines shared with v4l and media drivers.
+	 */
+	const u32 *bus_formats;
+	/**
+	 * @num_bus_formats: Size of @bus_formats array.
+	 */
+	unsigned int num_bus_formats;
+
+	/**
+	 * @bus_flags: Additional information (like pixel signal polarity) for
+	 * the pixel data on the bus, using &enum drm_bus_flags values
+	 * DRM_BUS_FLAGS\_.
+	 */
+	u32 bus_flags;
+
+	/**
+	 * @max_tmds_clock: Maximum TMDS clock rate supported by the
+	 * sink in kHz. 0 means undefined.
+	 */
+	int max_tmds_clock;
+
+	/**
+	 * @dvi_dual: Dual-link DVI sink?
+	 */
+	bool dvi_dual;
+
+	/**
+	 * @is_hdmi: True if the sink is an HDMI device.
+	 *
+	 * This field shall be used instead of calling
+	 * drm_detect_hdmi_monitor() when possible.
+	 */
+	bool is_hdmi;
+
+	/**
+	 * @has_audio: True if the sink supports audio.
+	 *
+	 * This field shall be used instead of calling
+	 * drm_detect_monitor_audio() when possible.
+	 */
+	bool has_audio;
+
+	/**
+	 * @has_hdmi_infoframe: Does the sink support the HDMI infoframe?
+	 */
+	bool has_hdmi_infoframe;
+
+	/**
+	 * @rgb_quant_range_selectable: Does the sink support selecting
+	 * the RGB quantization range?
+	 */
+	bool rgb_quant_range_selectable;
+
+	/**
+	 * @edid_hdmi_rgb444_dc_modes: Mask of supported hdmi deep color modes
+	 * in RGB 4:4:4. Even more stuff redundant with @bus_formats.
+	 */
+	u8 edid_hdmi_rgb444_dc_modes;
+
+	/**
+	 * @edid_hdmi_ycbcr444_dc_modes: Mask of supported hdmi deep color
+	 * modes in YCbCr 4:4:4. Even more stuff redundant with @bus_formats.
+	 */
+	u8 edid_hdmi_ycbcr444_dc_modes;
+
+	/**
+	 * @cea_rev: CEA revision of the HDMI sink.
+	 */
+	u8 cea_rev;
+
+	/**
+	 * @hdmi: advance features of a HDMI sink.
+	 */
+	struct drm_hdmi_info hdmi;
+
+	/**
+	 * @non_desktop: Non desktop display (HMD).
+	 */
+	bool non_desktop;
+
+	/**
+	 * @mso_stream_count: eDP Multi-SST Operation (MSO) stream count from
+	 * the DisplayID VESA vendor block. 0 for conventional Single-Stream
+	 * Transport (SST), or 2 or 4 MSO streams.
+	 */
+	u8 mso_stream_count;
+
+	/**
+	 * @mso_pixel_overlap: eDP MSO segment pixel overlap, 0-8 pixels.
+	 */
+	u8 mso_pixel_overlap;
+
+	/**
+	 * @max_dsc_bpp: Maximum DSC target bitrate, if it is set to 0 the
+	 * monitor's default value is used instead.
+	 */
+	u32 max_dsc_bpp;
+
+	/**
+	 * @vics: Array of vics_len VICs. Internal to EDID parsing.
+	 */
+	u8 *vics;
+
+	/**
+	 * @vics_len: Number of elements in vics. Internal to EDID parsing.
+	 */
+	int vics_len;
+
+	/**
+	 * @quirks: EDID based quirks. Internal to EDID parsing.
+	 */
+	u32 quirks;
+
+	/**
+	 * @source_physical_address: Source Physical Address from HDMI
+	 * Vendor-Specific Data Block, for CEC usage.
+	 *
+	 * Defaults to CEC_PHYS_ADDR_INVALID (0xffff).
+	 */
+	u16 source_physical_address;
+};
+
+int drm_display_info_set_bus_formats(struct drm_display_info *info,
+				     const u32 *formats,
+				     unsigned int num_formats);
+
+
+#endif

-- 
2.39.5



