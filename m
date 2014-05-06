Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Whaze-00023U-KN
 for barebox@lists.infradead.org; Tue, 06 May 2014 08:44:55 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Tue,  6 May 2014 10:44:20 +0200
Message-Id: <cover.1399365447.git.silvio.fricke@gmail.com>
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
Subject: [PATCH] rework dts file for edmqmx6
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Hi,

here a patch for rework of the dts file for the data-modul base board edmqmx6.
The patch is based on top of the dts-branch 09015ae52c18424c (ARM: Tegra20: Use
upstream dtsi files).


Cheers,
Silvio


Silvio Fricke (1):
  ARM: i.MX6: dts: edmqmx6: use new dts approach

 arch/arm/dts/imx6q-dmo-edmqmx6.dts | 297 ++-----------------------------------
 1 file changed, 9 insertions(+), 288 deletions(-)

-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
