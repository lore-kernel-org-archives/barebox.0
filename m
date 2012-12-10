Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ti6Sx-0006wb-A2
 for barebox@lists.infradead.org; Mon, 10 Dec 2012 16:44:28 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so2121583lbo.36
 for <barebox@lists.infradead.org>; Mon, 10 Dec 2012 08:44:23 -0800 (PST)
Message-ID: <50C61165.4070200@kiwigrid.com>
Date: Mon, 10 Dec 2012 17:44:21 +0100
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ethernet doesn't work after update to v2012.12.0
To: barebox@lists.infradead.org

Hi All,

after updating to the version 2012.12.0 ethernet doesn't work anymore. 
My system is iMX53, ethernet Interface: MII100. What could be the cause?

devinfo output:
...
`---- imx_iim0
      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7
...
`---- imx27-fec
      `---- miibus0
      `---- eth0
...
imx_iim
fec_imx
Generic PHY
...

Best Regards,
Slawa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
