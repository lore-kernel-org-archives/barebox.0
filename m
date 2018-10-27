Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDS9-0000f8-7O
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:31:50 +0000
Received: by mail-pg1-x534.google.com with SMTP id z17-v6so1300686pgv.3
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:31:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:20 -0700
Message-Id: <20181027013127.22163-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] Switch EEPROM aliases to ZII boards
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

With Marvell driver patches in 'next' a number of ZII boards now
expose a switch EEPROM device in devfs. By default those NVMEM devices
are given rather unwieldy long names, so this series introduces
appropriate aliases to shorten those to either "switch-eeprom" or
"switchN-eeprom" for cases of just one or multiple EEPROMs
correspondingly.

Feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  ARM: rdu2: Add switch EEPROM alias
  ARM: rdu1: Add switch EEPROM alias
  ARM: vf610-zii-dev-rev-c: Add switch EEPROM alias
  ARM: vf610-zii-cfu1: Add switch EEPROM alias
  ARM: vf610-zii-ssmb-spu3: Add switch EEPROM alias
  ARM: imx7d-zii-rpu2: Add switch EEPROM alias

 arch/arm/dts/imx51-zii-rdu1.dts      | 13 +++++++++++++
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi   |  6 ++++++
 arch/arm/dts/imx7d-zii-rpu2.dts      |  9 +++++++++
 arch/arm/dts/vf610-zii-cfu1.dts      | 11 +++++++++++
 arch/arm/dts/vf610-zii-dev-rev-c.dts | 12 ++++++++++++
 arch/arm/dts/vf610-zii-ssmb-spu3.dts | 11 +++++++++++
 6 files changed, 62 insertions(+)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
