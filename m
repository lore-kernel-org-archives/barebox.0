Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kbs-gmbh.de ([62.159.245.220])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XdgKr-0007F4-UT
 for barebox@lists.infradead.org; Mon, 13 Oct 2014 14:10:54 +0000
Received: from FESER.kbs-gmbh.de by kbs-gmbh.de (MDaemon PRO v14.0.3) 
 with ESMTP id md50000808911.msg for <barebox@lists.infradead.org>;
 Mon, 13 Oct 2014 16:00:43 +0200
Date: Mon, 13 Oct 2014 16:00:00 +0200
From: Matthias Feser <m.feser@kbs-gmbh.de>
Message-ID: <198ac8c9.1cfe6ee.1a970f3.504c@kbs-gmbh.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AM335x mehrere MMC-Bootquellen
To: "'barebox@lists.infradead.org'" <barebox@lists.infradead.org>

Hallo,

ich verwende barebox 2014.07 als Bootloader auf einem Custom-Board mit eine=
r AM335x CPU. Auf dem Board ist per DIP-Schalter (angebunden an einen der S=
YSBOOT Pins) w=E4hlbar, ob von einem internen eMMC-Speicher oder einer uSD-=
Karte gebootet werden soll. Bootloader und Kernel werden zwar von der gew=
=E4hlten Quelle geladen, ich scheitere momentan jedoch daran den RootFs Ker=
nelparameter automatisch je nach MMC-Instanz auszuw=E4hlen (entweder mmcblk=
0p2 oder mmcblk1p2). Ich m=F6chte es unbedingt vermeiden den Bootloader zwe=
ifach zu bauen. Meine erste Idee war, zwei boot Eintr=E4ge zu realisieren u=
nd dann den globalen Parameter global.boot.default im Boardinitialisierungs=
code entsprechend zu setzen. Sicherlich gibt es eine bessere L=F6sung. Ich =
w=E4re sehr dankbar um einen Ansatz seitens der Entwickler.

Auch beim Beagleboneblack besteht die M=F6glichkeit =FCber einen Drucktaste=
r die Bootquelle zu selektieren, hier gibt es jedoch lediglich einen boot E=
intrag, der standardm=E4=DFig =FCber global.boot.default=3Dsd selektiert wi=
rd. Nach meinem Verst=E4ndnis d=FCrfte dieses Board grunds=E4tzlich von der=
 SD-Karte booten.


Mit freundlichem Gru=DF
Matthias Feser


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
