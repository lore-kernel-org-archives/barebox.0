Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mta-gw01.evok.ch ([193.33.30.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPWog-0004cl-BL
 for barebox@lists.infradead.org; Wed, 02 May 2012 10:29:51 +0000
Received: from 213-193-97-58.static.cablecom.ch ([213.193.97.58]
 helo=dc.sensometrix.local)
 by mta-gw01.evok.ch with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.72) (envelope-from <patrick.gerber@sensometrix.ch>)
 id 1SPWoR-0005XQ-Pa
 for barebox@lists.infradead.org; Wed, 02 May 2012 12:29:35 +0200
Message-ID: <4FA10C8D.9010803@sensometrix.ch>
Date: Wed, 2 May 2012 12:29:33 +0200
From: Patrick Gerber <patrick.gerber@sensometrix.ch>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Flashing kernel from Linux
To: barebox@lists.infradead.org

Dear mailing list

I used to flash the linux kernel using barebox update command.
Now I would like to do the same from the Linux side. A simple dd to =

/dev/mtdblockX used to work with uboot but doesn't work with barebox. =

Barebox complain at startup about bad image...
Do you have any hint about how to flash the kernel from the Linux side ?

Thanks in advance

Patrick

-- =

____________________________________
Patrick Gerber
patrick.gerber@sensometrix.ch

Sensometrix SA
rue Albert-Richard 2
1201 Gen=E8ve
+41 (0) 22 510 22 01


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
