Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTrfl-0007ho-Ot
 for barebox@lists.infradead.org; Tue, 16 Sep 2014 12:15:54 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Tue, 16 Sep 2014 14:15:10 +0200
Message-Id: <cover.1410868272.git.silvio.fricke@gmail.com>
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
Subject: [PATCH] double requested gpio problem
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Hi,

I have seen that our phy_reset pin is not correctly configured because the
gpiopin information is requested more than one time. I get this as error
message. (My board is the eDM-QMX6 from Data-Modul)

	gpiolib: _gpio_request: gpio-25 (phy-reset) status -16

Because gpiolib is used so many times, I don't know if this is a correct
solution for my problem.
Can someone check this patch and give me some comments?

Thx,
Silvio

Silvio Fricke (1):
  gpiolib: gpio_request: correct return code of a already requested gpio

 drivers/gpio/gpiolib.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
