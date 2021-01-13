Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kze0t-0006cD-Mo
 for barebox@lists.infradead.org; Wed, 13 Jan 2021 11:08:33 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kze0r-0008Il-0H
 for barebox@lists.infradead.org; Wed, 13 Jan 2021 12:08:29 +0100
Date: Wed, 13 Jan 2021 12:07:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20210113110747.j25v7lnrlgdx62ns@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Barebox OF-Overlay Handling
To: barebox@lists.infradead.org
Cc: Michael Tretter <mtr@pengutronix.de>

Hi there,

I have the following problem. My customer is using overlays for
external devices like: display, camera, etc. The current overlay support
is awesome and most of it works out of the box. There is only one
nitpick: If Barebox isn't build with CONFIG_OF_OVERLAY_LIVE enabled many
error's are printed during boot. Those error's are ignored but let the
user assume that something went really bad:

ERROR: of_resolver: __symbols__ missing from base devicetree
ERROR: of_overlay: fragment 30164b88: phandle 0xffffffff not found
ERROR: of_overlay: fragment 30164c84: phandle 0xffffffff not found
ERROR: of_overlay: fragment 3012fb08: phandle 0xffffffff not found
ERROR: of_overlay: fragment 3012fc34: phandle 0xffffffff not found
ERROR: of_overlay: fragment 3012fd60: phandle 0xffffffff not found
ERROR: of_overlay: fragment 3012fe8c: phandle 0xffffffff not found
ERROR: of_overlay: fragment 3012ffb8: phandle 0xffffffff not found
ERROR: of_overlay: fragment 301300e4: phandle 0xffffffff not found
ERROR: of_overlay: fragment 30130210: phandle 0xffffffff not found
ERROR: of_overlay: fragment 3013033c: phandle 0xffffffff not found
ERROR: of_resolver: __symbols__ missing from base devicetree
ERROR: of_overlay: fragment 30130e94: phandle 0xffffffff not found
ERROR: of_overlay: fragment 30130fc4: phandle 0xffffffff not found
ERROR: of_resolver: __symbols__ missing from base devicetree
ERROR: of_overlay: fragment 30131a14: phandle 0xffffffff not found
ERROR: of_overlay: fragment 301342d4: phandle 0xffffffff not found

The of_firmware_load_overlay() calls triggering those errors.
The error's by itself are correct and I don't wanna change them but the
context must be correct by context I mean:

 - barebox-dt on fpga-platform: An FPGA platform needs a barebox
   base devicetree with __symbols__ and those error are correct because
   the firmware manager needs to load the firmware.
 - barebox-dt on non fpga-platform: Those errors are not correct.
   We don't need __symbols__ for the barebox base devicetree.
 - kernel-dt on any platform: Those error's are correct if
   the overlays are using phandles which should be the case most the
   time.

My proposed solution would be a stub like this:

#ifdef CONFIG_OF_OVERLAY_LIVE
int of_firmware_load_overlay(struct device_node *overlay, const char *path);
#else
static inline int of_firmware_load_overlay(struct device_node *overlay, const char *path)
{
       return 0;
}
#endif /* CONFIG_OF_OVERLAY_LIVE */

The disadvantage of this solution is that it can happen to end in a
non-booting device for FPGA platforms using overlays to programm the
bit stream and forget to enable CONFIG_OF_OVERLAY_LIVE because the
kernel tries to access regions not existing.

I've discussed this with Michael in private but we didn't came to a
conclusion. Therefore I'm asking here any input would be helpfull :)

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
