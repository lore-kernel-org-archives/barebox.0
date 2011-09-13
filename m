Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3Rhg-0007N8-Km
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 12:03:09 +0000
Date: Tue, 13 Sep 2011 15:03:01 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110913120301.GB25206@sapphire.tkos.co.il>
References: <E78BBE677EB9144B8F0A0A29674CD533489C0CDC8A@SRV-VS06.TELEVIC.COM>
	<20110913114353.GA25206@sapphire.tkos.co.il>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
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
Subject: Re: tftp to flash from linux
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Wouter,

On Tue, Sep 13, 2011 at 01:50:42PM +0200, Vanhauwaert Wouter wrote:
> Yes, I already thought that this nandwrite command can be used for writing. 
> But problem is I get the image via tftp and my RAM is to little to store it 
> temporary.  So I have to write it directly to flash. Can I combine this 
> nandwrite and tftp in any way? I'm using busybox

The nandwrite utility (and also the Busybox version) reads data from standard 
input in the absence of file argument. You can pipe the data stream from the 
network directly to nandwrite.

baruch

> -----Original Message-----
> From: Baruch Siach [mailto:baruch@tkos.co.il] 
> Sent: dinsdag 13 september 2011 13:44
> To: Vanhauwaert Wouter
> Cc: barebox@lists.infradead.org
> Subject: Re: tftp to flash from linux
> 
> Hi Wouter,
> 
> On Tue, Sep 13, 2011 at 01:36:31PM +0200, Vanhauwaert Wouter wrote:
> > To update our platform from within a booted linux, we need tftp to 
> > write to the nand-flash (another partition) directly.
> > Which one do I use? /dev/mtdx or /dev/mtdblockx? And what happens with 
> > bad blocks here? Are these bad-block aware?
> 
> Use the nandwrite utility from the mtd-utils package (there's also a Busybox 
> version), and a/dev/mtdx.
> 
> baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
