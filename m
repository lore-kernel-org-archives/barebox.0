Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [212.27.42.5] (helo=smtp5-g21.free.fr)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NPJyx-0007wY-CS
	for barebox@lists.infradead.org; Mon, 28 Dec 2009 18:06:20 +0000
Received: from smtp5-g21.free.fr (localhost [127.0.0.1])
	by smtp5-g21.free.fr (Postfix) with ESMTP id 5CF04D48194
	for <barebox@lists.infradead.org>; Mon, 28 Dec 2009 19:05:32 +0100 (CET)
Received: from [192.168.1.15] (tal33-2-82-228-175-43.fbx.proxad.net
	[82.228.175.43])
	by smtp5-g21.free.fr (Postfix) with ESMTP id 71F03D480FD
	for <barebox@lists.infradead.org>; Mon, 28 Dec 2009 19:05:30 +0100 (CET)
Message-ID: <4B38F36A.6080305@eukrea.com>
Date: Mon, 28 Dec 2009 19:05:30 +0100
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
Subject: i.MX25 NAND status
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

What is the status of current barebox on i.MX25 using NAND boot ?

At the first try, it doesn't compile with CONFIG_NAND_IMX_BOOT enabled 
as imx_nand_load_image wasn't updated in 
board/freescale-mx25-3-stack/3stack.c
-       imx_nand_load_image((void *)TEXT_BASE, 256 * 1024, 2048, 16384);
+       imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);

I've loaded barebox in ram using a JTAG and the NAND flash is properly 
detected but the badblock scan works only if the NAND was previously 
initialised by the JTAG and gives differents results at each run which 
seems to indicate something is wrong in the setup.

The platform I'm testing is a i.MX257 TO 1.1 using a 3.3V 8bits width 2k 
page size 2Gb NAND from Micron (MT29F2G08AAD).

Thanks,

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
