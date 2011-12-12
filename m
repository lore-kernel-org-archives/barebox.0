Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra8py-0004BB-2W
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 16:34:47 +0000
Received: from [192.168.1.15] (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 229BC4B035E
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 17:34:32 +0100 (CET)
Message-ID: <4EE62D17.1090709@eukrea.com>
Date: Mon, 12 Dec 2011 17:34:31 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
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
Subject: magicvar breaks tftp (or ramfs)
To: barebox@lists.infradead.org

Hi Sascha,

while upgrading to lastet head, I started to get "unable to handle paging 
request" when transfering file using tftp (either to nand or to ram).

On master it always fail. On 2011.12 : it works (both configured with make 
eukrea_cpuimx35_defconfig and tested on an i.MX35 board)

*** HEAD at 905f3ccbd4e074d99461bd547dad63a04a9abf42 :
barebox@Eukrea CPUIMX35:/ version

barebox 2011.12.0-00129-g905f3cc (Dec 12 2011 - 17:33:10)
barebox@Eukrea CPUIMX35:/ dhcp
phy0: Link is up - 100/Full
DHCP client bound to address 192.168.1.151
barebox@Eukrea CPUIMX35:/ tftp logo.bmp.lzo
TFTP from server 192.168.1.15 ('logo.bmp.lzo' -> 'logo.bmp.lzo')
	unable to handle paging request at address 0x87f2a919
pc : [<87f1c064>]    lr : [<87f1e298>]
sp : 876ffdfc  ip : 00000016  fp : 00000000
r10: 876fff58  r9 : 00000000  r8 : 87f2abd5
r7 : 87f30b58  r6 : 877944a8  r5 : 87794689  r4 : 00000000
r3 : 87f2a919  r2 : 87f2ec74  r1 : 00000001  r0 : 00000000
Flags: nzcv  IRQs off  FIQs off  Mode SVC_32

*** 2011.12 :
barebox@Eukrea CPUIMX35:/ version

barebox 2011.12.0 (Dec 12 2011 - 17:30:49)
barebox@Eukrea CPUIMX35:/ dhcp
phy0: Link is up - 100/Full
DHCP client bound to address 192.168.1.151
barebox@Eukrea CPUIMX35:/ tftp logo.bmp.lzo
TFTP from server 192.168.1.15 ('logo.bmp.lzo' -> 'logo.bmp.lzo')
	#

Any idea what could be wrong here ?

Thanks
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
