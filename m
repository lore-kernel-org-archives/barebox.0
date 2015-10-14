Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmJ4G-0002Vj-SV
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 10:13:57 +0000
Received: by lbwr8 with SMTP id r8so42382356lbw.2
 for <barebox@lists.infradead.org>; Wed, 14 Oct 2015 03:13:33 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed, 14 Oct 2015 13:15:47 +0300
Message-Id: <1444817749-20766-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 0/2] usb: core: return -EAGAIN on usb_* functions reentrance
To: barebox@lists.infradead.org

The second patch of this patch set adds reentrance detection to 
the the following functions: usb_submit_int_msg, usb_control_msg and
usb_bulk_msg. These functions will return -EAGAIN if reentered. 
Other public usb_* functions call one of these three functions.
This patch enables one to use regular *delay() functions
throughout the ehci-hcd.c.

The first patch adds check for -EAGAIN return value to the usb keyboard
driver. The driver will skip keyboard poll upon getting this error value
from either usb_submit_int_msg() or usb_get_report() functions.

Peter Mamonov (2):
	input: usb_kbd: skip poll on -EAGAIN error
	usb: core: return -EAGAIN on usb_* functions reentrance

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
