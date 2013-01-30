Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f180.google.com ([209.85.214.180])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0gkq-0006Re-EE
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 23:07:45 +0000
Received: by mail-ob0-f180.google.com with SMTP id ef5so2197483obb.39
 for <barebox@lists.infradead.org>; Wed, 30 Jan 2013 15:07:42 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 31 Jan 2013 00:07:42 +0100
Message-ID: <CAAfyv370GDsJuAKMdZ4eQsHTqvy+cM_=WPk1Og_UkQDy-+dd=g@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: current master pandaboard booting broken
To: barebox@lists.infradead.org

Hi,

I'm just build MLO + barebox.bin for panda from actual master
but booting failed when trying to run barebox.bin:

barebox 2013.01.0-00158-g1e8c9c5 #1 Wed Jan 30 23:06:40 CET 2013


Board: Texas Instrument's Panda
PandaBoard Revision: 003
omap-hsmmc omap4-hsmmc0: registered as omap4-hsmmc0
mci mci0: registered disk0
malloc space: 0x84000000 -> 0x85ffffff (size 32 MiB)
stack space:  0x8f000000 -> 0x8f007fff (size 32 KiB)
booting from MMC1

Any ideas?

Thanks,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
