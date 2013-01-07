Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TsEDc-0000bw-EU
 for barebox@lists.infradead.org; Mon, 07 Jan 2013 15:02:30 +0000
Message-ID: <50EAE379.2020702@phytec.de>
Date: Mon, 07 Jan 2013 16:02:17 +0100
From: =?ISO-8859-15?Q?J=FCrgen_Kilb?= <J.Kilb@phytec.de>
MIME-Version: 1.0
References: <1357315992-18896-1-git-send-email-J.Kilb@phytec.de>
 <20130107092324.GH1906@pengutronix.de>
In-Reply-To: <20130107092324.GH1906@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM omap hsmmc: Fix adding iobase for OMAP3
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 07.01.2013 10:23, Sascha Hauer wrote:
> Hi J=FCrgen,
>
> On Fri, Jan 04, 2013 at 05:13:12PM +0100, Juergen Kilb wrote:
>> Only the OMAP4 hsmmc module has an offset of 0x100 from its register
>> base address. With commit 416a991 the offset was added for all SOCs
>> which use the omap_hsmmc driver.
> The offset was present before 416a991 aswell. It seems that the device
> convenience functions introduced with bc872dbe79 did it wrong for OMAP3.
> When then the boards started using the convenience functions with
> 5a12f45 it became broken.
OK, I've not dug deeper...
> I prefer to fix this properly. Does the following fix it for you?
Yes, your patch looks better then my simple version.
Your patch fixed it for me.
You can add my "Tested-by: J.Kilb@Phytec.de" line.

thanks,
J=FCrgen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
