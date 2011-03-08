Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwmz6-0006nJ-JA
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 02:49:17 +0000
Date: Tue, 8 Mar 2011 03:44:03 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110308024403.GA9351@game.jcrosoft.org>
References: <201103071424.14270.jbe@pengutronix.de>
	<20110308130802.72018ed3@manocska.bendor.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110308130802.72018ed3@manocska.bendor.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] S3C24xx: Fixing the NAND handling
To: =?iso-8859-1?Q?Zolt=E1n_K=F3csi?= <zoltan@bendor.com.au>
Cc: barebox@lists.infradead.org

On 13:08 Tue 08 Mar     , Zolt=E1n K=F3csi wrote:
> On Mon, 7 Mar 2011 14:24:13 +0100
> Juergen Beisert <jbe@pengutronix.de> wrote:
> =

> =

> >  - the driver's local OOB layout for small page NANDs overwrites the
> > vendors bad block marker (a really bad idea!)
> >  - the ECC setup for large page NANDs violates NANDs partial write
> > count (it forces 8 partial writes instead of allowed 4 per 2048 byte
> > page)
> > =

> > How to adapt barebox according to the kernel? If we do OOB and ECC
> > setup correctly in barebox, the mainline kernel cannot work with this
> > data. If we do it in the same way than the kernel, we lose the bad
> > block markers or do more writes than the manufacturer allows for
> > reliable data security.
> > =

> > Changing the kernel is also hard to do, because it breaks existing
> > software installations which should just run with more recent kernels.
> =

> I believe that kernel has to be fixed. If it is broken and violates the
> chip manufacturer's speifications, then you can't (or shouldn't) use it
> on the field anyway. In that case you have to accept that upgrading the
> kernel will mean that you also have to rewrite whatever code you have
> which depends on the *incorrect* treatment of the hardware. =

> =

> Prolonging the existence of mistreatment of hardware in the name of
> backward compatibility is not a good thing, I believe.
I agree but you may have device on the market that use it and depond on it =
to
boot as you can not change the bootloader so you do need to detect it

or make the old way optionnal at least and use the correct one as default

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
