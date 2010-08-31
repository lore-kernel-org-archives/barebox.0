Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OqIrb-0003iS-4z
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 04:54:28 +0000
Date: Tue, 31 Aug 2010 06:53:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100831045355.GM23081@game.jcrosoft.org>
References: <AANLkTimqR7T24m3NSz5+tBje7CrtUHLwVJ8khJ=wg9iL@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimqR7T24m3NSz5+tBje7CrtUHLwVJ8khJ=wg9iL@mail.gmail.com>
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
Subject: Re: barebox as first stage bootloader
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

	yes for sure I use it on my 9263ek in the past but I use a ICE not
	sam-ba tool

	maybe to need to load in ddr a small version of barebox and then flash
	it by download it via ethernet or serial

Best Regards,
J.
On 10:17 Tue 31 Aug     , Nataraj S Narayan wrote:
>    Hi
> 
>    Is it possible to use barebox as a first stage boot loader replacing
>    "nandflash_at91sam9263ek.bin"?
> 
>    I tried to put barebox.bin onto 0x0 in Nand flash using sam-ba, but sam-ba
>    complains about huge file size.
> 
>    warm regards
> 
>    Nataraj

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
