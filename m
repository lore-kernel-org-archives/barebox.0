Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yb0-f177.google.com ([209.85.213.177])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWTF1-0005uN-93
 for barebox@lists.infradead.org; Wed, 25 Jan 2017 19:28:24 +0000
Received: by mail-yb0-f177.google.com with SMTP id j82so21104998ybg.1
 for <barebox@lists.infradead.org>; Wed, 25 Jan 2017 11:28:02 -0800 (PST)
MIME-Version: 1.0
From: Haris Papadopoulos <haris@amberbox.com>
Date: Wed, 25 Jan 2017 19:27:01 +0000
Message-ID: <CACmkAZEckFyAA1zgS=j53RTMzqtxmwpiaNcHZ4=2jhA5uSKXJA@mail.gmail.com>
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
Subject: How to configure Imx6ul watchdog from barebox
To: barebox@lists.infradead.org

Hi,

I am using barebox on a board from phytec phyBOARD-Segin that uses an
imx6ul processor  (phyCORE-i.MX 6UL).

Any idea how to configure the watchdog to automatically start in the
bootloader and then be kicked from linux? In which file do I have to
do the following configs?

CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_IMX=y

Where can I setup the relevant flags?

Also, does barebox have the bootcount feature?

Thanks
Haris

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
