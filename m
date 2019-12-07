Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr130073.outbound.protection.outlook.com
 ([40.107.13.73] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idX7i-0000v6-Ac
 for barebox@lists.infradead.org; Sat, 07 Dec 2019 10:15:39 +0000
From: Patrick Schneider <patrick.schneider@bhtronik.de>
Date: Sat, 7 Dec 2019 10:15:26 +0000
Message-ID: <AM0PR08MB3842FB9ECFC8E8368A4DBF0DEB5E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
Content-Language: de-DE
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
Subject: Writing to ubifs
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I have a use case where I would need to be able to manipulate the fstab on the rootfs before booting, so I wondered if it is possible to write to a mounted ubifs from barebox?
Currently I am trying with: 

mount /dev/nand0.root.ubi.rootfs /mnt/rootfs -o rw

which still yields in a readonly mount of the rootfs where I cannot manipulate files. Does barebox have write support to ubifs or is there another way?

Thanks for your answers!

Best regards,
Patrick


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
