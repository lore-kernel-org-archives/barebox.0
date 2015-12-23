Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aBlxi-00032m-F0
 for barebox@lists.infradead.org; Wed, 23 Dec 2015 16:08:27 +0000
Received: by mail-lf0-x22b.google.com with SMTP id p203so151226142lfa.0
 for <barebox@lists.infradead.org>; Wed, 23 Dec 2015 08:08:04 -0800 (PST)
Received: from berta ([194.67.106.109])
 by smtp.gmail.com with ESMTPSA id l5sm6510624lbc.36.2015.12.23.08.08.02
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Dec 2015 08:08:02 -0800 (PST)
Date: Wed, 23 Dec 2015 19:10:58 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151223191058.4ffb07f4@berta>
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
Subject: [RFC] device probe order
To: barebox <barebox@lists.infradead.org>

Dear All,

I've ported an UHCI driver from the u-boot to the barebox (WIP). To
interoperate with the EHCI driver, the UHCI driver should be probed
ater the EHCI driver. Both drivers are binded via the device tree
mechanism. How can i achieve the correct probe order?

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
