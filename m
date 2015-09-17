Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcXBD-0004nI-Do
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 11:16:44 +0000
Received: by lagj9 with SMTP id j9so9032707lag.2
 for <barebox@lists.infradead.org>; Thu, 17 Sep 2015 04:16:21 -0700 (PDT)
Received: from berta.oavm ([194.67.106.109])
 by smtp.gmail.com with ESMTPSA id ps9sm444241lbb.19.2015.09.17.04.16.20
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 17 Sep 2015 04:16:20 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 Sep 2015 14:18:32 +0300
Message-Id: <1442488714-10508-1-git-send-email-pmamonov@gmail.com>
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
Subject: [RFC v4 0/2] WIP: add usb keyboard driver
To: barebox@lists.infradead.org

Changes since v3:
	- issue Set_Idle(duration=0) usb request if polling via control EP

Peter Mamonov (2):
	usb: ehci-hcd: port periodic transactions implementation
	input: port usb keyboard driver from the u-boot

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
