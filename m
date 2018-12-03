Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTnYS-00029M-Aq
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 12:42:30 +0000
Received: from odin.home.erwinrol.com by smtp.strato.de (RZmta 44.6 DYNA|AUTH)
 with ESMTPSA id L03290uB3CgCV2E
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate)
 for <barebox@lists.infradead.org>;
 Mon, 3 Dec 2018 13:42:12 +0100 (CET)
Message-ID: <1543840931.5085.22.camel@erwinrol.com>
From: Erwin Rol <mailinglists@erwinrol.com>
Date: Mon, 03 Dec 2018 13:42:11 +0100
Mime-Version: 1.0
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
Subject: ubifs
To: Barebox List <barebox@lists.infradead.org>

Hallo all,

I want to create empty ubifs volumes, like this;

1) ubiformat -y -q /dev/nand0.system
2) ubiattach /dev/nand0.system
3) ubimkvol -t dynamic /dev/nand0.system.ubi system 0

4) .... ???? 

5) mount -t ubifs -o rw /dev/nand0.system.ubi.system /mnt/system/


Is this possible with barebox? 

- Erwin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
