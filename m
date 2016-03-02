Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ab9Ut-0005U3-8I
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 16:19:36 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 7BDA727A3EF
 for <barebox@lists.infradead.org>; Wed,  2 Mar 2016 17:19:13 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Wed, 02 Mar 2016 17:19:08 +0100
Message-ID: <3665455.GH0lG2JcVq@ws-stein>
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
Subject: UBIFS recovery fails in barebox while Linux suceeds
To: barebox@lists.infradead.org
Cc: Daniel =?ISO-8859-1?Q?Kr=FCger?= <daniel.krueger@systec-electronic.com>

Hi,

in case a UBIFS needs recovery (unclean write or whatever on NOR flash) it is possible that barebox fails to do so while Linux suceeds.
The main cause, IMHO, is that Linux takes max_write_size into account (starting with commit 2765df7da540687c4d57ca840182122f074c5b9c "UBIFS: use max_write_size during recovery") while barebox doesn't. Apparently is_last_write (fs/ubifs/recovery.c) results differently due to that fact which explains why recovery progress differently. I don't know which linux version the ubifs code in barebox is taken from but I guess this needs to be updated. Are there any plans?

Best regards,
Alexander
-- 
Dipl.-Inf. Alexander Stein
SYS TEC electronic GmbH
alexander.stein@systec-electronic.com

Legal and Commercial Address:
Am Windrad 2
08468 Heinsdorfergrund
Germany

Office: +49 (0) 3765 38600-0
Fax:    +49 (0) 3765 38600-4100
 
Managing Directors:
	Director Technology/CEO: Dipl.-Phys. Siegmar Schmidt;
	Director Commercial Affairs/COO: Dipl. Ing. (FH) Armin von Collrepp
Commercial Registry:
	Amtsgericht Chemnitz, HRB 28082; USt.-Id Nr. DE150534010


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
