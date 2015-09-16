Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcCV0-0003oJ-5o
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 13:11:46 +0000
Received: by lahg1 with SMTP id g1so99555462lah.1
 for <barebox@lists.infradead.org>; Wed, 16 Sep 2015 06:11:23 -0700 (PDT)
Received: from berta.oavm ([194.67.106.109])
 by smtp.gmail.com with ESMTPSA id b1sm4091869lah.11.2015.09.16.06.11.22
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 16 Sep 2015 06:11:22 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed, 16 Sep 2015 16:13:29 +0300
Message-Id: <1442409211-23121-1-git-send-email-pmamonov@gmail.com>
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
Subject: [RFC v3 0/2] WIP: add usb keyboard driver
To: barebox@lists.infradead.org

Changes since v2:
	ehci-hcd:
		* no need for non-interruptible mdelay()
		* use dev_dbg(), dev_err() functions for messages output
		* remove excessive checks of pointers
		* use dma_alloc_coherent for memory allocation
		* use somewhat meaningful return values instead of -1
		* remove too optimistic comments from the code
	usb_kbd:
		* allocate usb_kbd_pdata.new using dma_alloc_coherent()
		* fall back to polling via control EP if interrupt polling fails
	
Peter Mamonov (2):
	usb: ehci-hcd: port periodic transactions implementation
	input: port usb keyboard driver from the u-boot

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
