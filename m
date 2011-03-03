Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PvAbo-0008AS-IQ
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 15:38:33 +0000
Message-ID: <4D6FB5F1.50804@eukrea.com>
Date: Thu, 03 Mar 2011 16:38:25 +0100
From: Eric Benard <eric@eukrea.com>
MIME-Version: 1.0
References: <cover.1281966840.git.baruch@tkos.co.il>
	<0c648f6900c08f4c3db74b5a2eb9878e393bca69.1281966840.git.baruch@tkos.co.il>
	<4D6FB01B.7000406@eukrea.com>
	<20110303153146.GI20423@jasper.tkos.co.il>
In-Reply-To: <20110303153146.GI20423@jasper.tkos.co.il>
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
Subject: Re: [PATCH v2 4/6] imx25: add chip specific IIM fusebox defines
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On 03/03/2011 16:31, Baruch Siach wrote:
> Hi Eric,
>
> On Thu, Mar 03, 2011 at 04:13:31PM +0100, Eric Benard wrote:
>> do you have an example on how to blow fuses on i.MX25 for example
>> for setting the mac address or the boot configuration bits ?
>
> Here you go:
>
> # allow fuses blow
> imx_iim_bank0.permanent_write_enable=1
> # put the MAC address 02:4b:b1:71:0f:29
> mw -b -d /dev/imx_iim_bank0 26+6 0x02 0x4b 0xb1 0x71 0x0f 0x29
> # make the MAC address permanent (not more fuses blow)
> mw -b -d /dev/imx_iim_bank0 0+1 0x04
> # disallow fuses blow
> imx_iim_bank0.permanent_write_enable=0
>
many thanks, that's a very good example of a clever usage of mw ;-)

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
