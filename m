Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout1.fh-giessen.de ([212.201.18.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggQ5H-000478-7J
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 08:16:33 +0000
References: <4e760479-94dc-d3b5-8056-8c15e743c990@mni.thm.de>
 <20190107074459.idj6n577mw6iwyez@pengutronix.de>
From: Martin Hofmann <martin.hofmann@mni.thm.de>
Message-ID: <d53efd8a-73d0-78d6-5583-215692c4ce21@mni.thm.de>
Date: Mon, 7 Jan 2019 09:16:21 +0100
MIME-Version: 1.0
In-Reply-To: <20190107074459.idj6n577mw6iwyez@pengutronix.de>
Content-Language: de-DE
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
Subject: Re: [PATCH v1 1/1] Add generic implementation for muldi3
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha

On 1/7/19 8:44 AM, Sascha Hauer wrote:
> Hi Martin,
> 
> On Sat, Jan 05, 2019 at 07:45:12PM +0100, Martin Hofmann wrote:
>> Since version v2018.08.0 some shared copies of gcc routines got added to
>> barebox so that archs don't need to have thier own copy inside thier
>> lib. The arch I am working on atm also needs support for muldi3 which is
>> not present as a generic version right now.
>>
>> This patch addes the generic version form latest linux v4.20 to barebox
>> and lets the archs select it in thier Kconfig so they don't need to
>> provide it themself.
> 
> Applied, thanks
> 
> Which architecture is it you are working on?
> 
> Sascha
>

It is called eco32 and is a fairly simple RISC CPU made for educational
purpose designed by a lecturer of the Univerity Of Applied Science
Mittelhessen in germany. It is used for courses like operating systems
and compiler construction.

If you are interssted in it the port is available on my github:
https://github.com/mh0fmann/eco32-barebox

Martin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
