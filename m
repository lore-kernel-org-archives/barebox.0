Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp02.atmel.com ([204.2.163.16] helo=SJOEDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WppCB-0003hF-VU
 for barebox@lists.infradead.org; Thu, 29 May 2014 01:31:52 +0000
Message-ID: <53868DE7.9030207@atmel.com>
Date: Thu, 29 May 2014 09:31:19 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <CAC_9p+84LdjnZ=7zRtHYchpCDigYWKhy5H7Ed+gr0SnvPUDH+g@mail.gmail.com>
In-Reply-To: <CAC_9p+84LdjnZ=7zRtHYchpCDigYWKhy5H7Ed+gr0SnvPUDH+g@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] SAMA5D3X FIX AT91_SMC_CS offset stride
To: Matteo Fortini <matteo.fortini@gmail.com>
Cc: barebox@lists.infradead.org

Hi Matteo,
   Thanks for your patch. Can you resend it directly while not through 
attachment?
   When you resend, you can add my acked-by.

Best Regards,
Bo Shen

On 05/29/2014 01:16 AM, Matteo Fortini wrote:
> As stated in section 29.19.32 of SAMA5D3 Series datasheet, to move
> from CS(n) to CS(n+1) the stride is 0x14 and not 0x10.
>
> For this reason, I was unable to use the NAND memory on my board (CS
> configuration was not applied and the timings were wrong).
>
> This patch fixes the problem.
>
> Matteo


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
