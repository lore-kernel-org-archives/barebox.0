Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WlE6p-0005Dw-HL
 for barebox@lists.infradead.org; Fri, 16 May 2014 09:07:20 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Fri, 16 May 2014 11:06:48 +0200
Message-Id: <cover.1400228358.git.silvio.fricke@gmail.com>
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
Subject: [PATCH] free up some sram space for dmo edmqmx6 board
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Hi,

Since 9f8aab600d9 the edmqmx6 board doesn't boot anymore, because it exceeds
the SRAM.

With this patch the board resurges now. But this is only a workaround. In
another barebox version I will move from the in-software memory calibration to
DCD based values like the other boards.

Since no one uses the menu framework, we disable it.

Bye and Thanks,
Silvio


Silvio Fricke (1):
  ARM: i.MX: edmqmx6: disable menu framework

 arch/arm/configs/datamodul-edm-qmx6_defconfig | 3 ---
 1 file changed, 3 deletions(-)

-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
