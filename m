Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx-relay38-dus.antispameurope.com ([94.100.134.238])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xdglt-0005Z9-Sz
 for barebox@lists.infradead.org; Mon, 13 Oct 2014 14:38:51 +0000
From: "Gieseler, Christian" <CG@eks-engel.de>
Date: Mon, 13 Oct 2014 14:36:28 +0000
Message-ID: <C9183576C7342045BFDCAE863EB3C37A0B5CE431@EKS-Exchange.eks-engel.local>
References: <198ac8c9.1cfe6ee.1a970f3.504c@kbs-gmbh.de>
In-Reply-To: <198ac8c9.1cfe6ee.1a970f3.504c@kbs-gmbh.de>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: AM335x mehrere MMC-Bootquellen
To: "'barebox@lists.infradead.org'" <barebox@lists.infradead.org>

Hi Matthias,

> -----Original Message-----
> From: barebox [mailto:barebox-bounces@lists.infradead.org] On Behalf =

> Of Matthias Feser
> Sent: Monday, October 13, 2014 4:00 PM
> To: 'barebox@lists.infradead.org'
> Subject: AM335x mehrere MMC-Bootquellen
> =

> Hallo,
> =

> ich verwende barebox 2014.07 als Bootloader auf einem Custom-Board mit =

> einer AM335x CPU. Auf dem Board ist per DIP-Schalter (angebunden an =

> einen der SYSBOOT Pins) w=E4hlbar, ob von einem internen eMMC-Speicher =

> oder einer uSD-Karte gebootet werden soll. Bootloader und Kernel =

> werden zwar von der gew=E4hlten Quelle geladen, ich scheitere momentan =

> jedoch daran den RootFs Kernelparameter automatisch je nach =

> MMC-Instanz auszuw=E4hlen (entweder mmcblk0p2 oder mmcblk1p2). Ich =

> m=F6chte es unbedingt vermeiden den Bootloader zweifach zu bauen. Meine =

> erste Idee war, zwei boot Eintr=E4ge zu realisieren und dann den =

> globalen Parameter global.boot.default im Boardinitialisierungscode entsp=
rechend zu setzen.
> Sicherlich gibt es eine bessere L=F6sung. Ich w=E4re sehr dankbar um eine=
n =

> Ansatz seitens der Entwickler.
> =

We use an initscript that does the choice for the kernel commandline entry.
$bootsource_instance should help you:
global linux.bootargs.root=3D"root=3D/dev/mmcblk${bootsource_instance}p3"


> Auch beim Beagleboneblack besteht die M=F6glichkeit =FCber einen =

> Drucktaster die Bootquelle zu selektieren, hier gibt es jedoch =

> lediglich einen boot Eintrag, der standardm=E4=DFig =FCber =

> global.boot.default=3Dsd selektiert wird. Nach meinem Verst=E4ndnis d=FCr=
fte =

> dieses Board grunds=E4tzlich von der SD-Karte booten.
> =

I think you are right about booting always from sd card.
As a sample the line from the same iniscript to make the entry depending on=
 the bootsource:
global.boot.default=3D"mci${bootsource_instance}.2"

Please observe that counting up partitions is different in barebox (startin=
g with 0)and linux (starting with1).

Best Regards
Christian Gieseler

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
