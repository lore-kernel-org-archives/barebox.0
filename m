Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ze11o-0002AY-Ea
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 13:21:09 +0000
Received: by lbcao8 with SMTP id ao8so50687875lbc.3
 for <barebox@lists.infradead.org>; Mon, 21 Sep 2015 06:20:46 -0700 (PDT)
Received: from berta.oavm ([194.67.106.109])
 by smtp.gmail.com with ESMTPSA id l8sm1016924laf.40.2015.09.21.04.28.51
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 21 Sep 2015 04:28:51 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 21 Sep 2015 14:30:44 +0300
Message-Id: <1442835049-20829-1-git-send-email-pmamonov@gmail.com>
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
Subject: [RFC v5 0/2] WIP: add usb keyboard driver
To: barebox@lists.infradead.org

Changes since v4:
	- usb: ehci-hcd: detect submit_*_msg() functions re-entrance
	- common: clock: introduce non interruptible version of mdelay() function
	- usb: ehci-hcd: use mdelay_non_inerruptible to avoid re-entrance

Peter Mamonov (5):
	usb: ehci-hcd: port periodic transactions implementation
	usb: ehci-hcd: detect re-entrance
	common: clock: introduce mdelay_non_interruptible()
	usb: ehci-hcd: use mdelay_non_inerruptible()
	input: port usb keyboard driver from the u-boot

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
