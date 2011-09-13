Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3RVl-0007Da-Sm
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 11:50:50 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Tue, 13 Sep 2011 13:50:42 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD533489C0CDC8A@SRV-VS06.TELEVIC.COM>
	<20110913114353.GA25206@sapphire.tkos.co.il>
In-Reply-To: <20110913114353.GA25206@sapphire.tkos.co.il>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: tftp to flash from linux
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Baruch,

Yes, I already thought that this nandwrite command can be used for writing. But problem is I get the image via tftp and my RAM is to little to store it temporary. 
So I have to write it directly to flash. Can I combine this nandwrite and tftp in any way? I'm using busybox

thanks

-----Original Message-----
From: Baruch Siach [mailto:baruch@tkos.co.il] 
Sent: dinsdag 13 september 2011 13:44
To: Vanhauwaert Wouter
Cc: barebox@lists.infradead.org
Subject: Re: tftp to flash from linux

Hi Wouter,

On Tue, Sep 13, 2011 at 01:36:31PM +0200, Vanhauwaert Wouter wrote:
> To update our platform from within a booted linux, we need tftp to 
> write to the nand-flash (another partition) directly.
> Which one do I use? /dev/mtdx or /dev/mtdblockx? And what happens with 
> bad blocks here? Are these bad-block aware?

Use the nandwrite utility from the mtd-utils package (there's also a Busybox version), and a/dev/mtdx.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
