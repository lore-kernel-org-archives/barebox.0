Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hueoZ-0005MK-OP
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 15:22:25 +0000
References: <20190805140927.14941-1-s.hauer@pengutronix.de>
 <20190805142405.25n73rcixhctzsvh@pengutronix.de>
From: Rouven Czerwinski <rouven@czerwinskis.de>
In-reply-to: <20190805142405.25n73rcixhctzsvh@pengutronix.de>
Date: Mon, 05 Aug 2019 17:22:13 +0200
Message-ID: <878ss7myca.fsf@czerwinskis.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] crypto: caam - Always do rng selftest
To: barebox@lists.infradead.org


Roland Hieber <rhi@pengutronix.de> writes:

> On Mon, Aug 05, 2019 at 04:09:27PM +0200, Sascha Hauer wrote:
>> -	if (caam_need_rng_software_selftest()) {
>> +	if (!(rd_reg32(&ctrl->r4tst[0].rdsta) & RDSTA_IFMASK)) {
>
> I'm not sure if I would understand that condition some years later
> without a comment, but then I'm not very versed in the NXP CAAM and the
> rest of the code also does many things like that without explaining
> them, so I guess it's okay :D
>
>  - Roland

Maybe:
/*
 * According to 6.10.74.1 of the i.MX6UL Security Reference Manual,
 * RDSTA_IF1 and RDSTA_IF2 (contained in RDSTA_IFMASK) are flags whether
 * the state handles have been instantiated.
 */

We can probably run the self test a second time by skipping the
instantiation descriptors and only executing the self test sequence.
I don't know if thats really worth it though.

Regards,
Rouven Czerwinski

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
