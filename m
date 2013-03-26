Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKQ41-0007qu-Ql
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 09:21:07 +0000
Received: by mail-wi0-f174.google.com with SMTP id hj8so429061wib.13
 for <barebox@lists.infradead.org>; Tue, 26 Mar 2013 02:21:02 -0700 (PDT)
Message-ID: <5151687D.20905@monstr.eu>
Date: Tue, 26 Mar 2013 10:21:01 +0100
From: Michal Simek <monstr@monstr.eu>
MIME-Version: 1.0
References: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
Reply-To: monstr@monstr.eu
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
Subject: Re: [PATCH v4 0/5] ARM: add support for Zynq
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen,

On 03/26/2013 10:11 AM, Steffen Trumtrar wrote:
> Hi!
>
> This is mostly a repost of v3. Only changes are in 4/5.
> The final image now gets always piped through zynq_mkimage. This is needed
> anyway, so do it always.
> This tool will eventually replace all the flash_header linker stuff, although
> it is pretty simple on the Zynq.

I have signed to barebox mailing list today and I see that in the right time.
It is little bit messy what you have sent.
It is mix of v2/v3/v4 patches where it is not clear which version I should try.

Can you please resend the whole patchset as v5?

Thanks,
Michal

-- 
Michal Simek, Ing. (M.Eng)
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel 2.6 Microblaze Linux - http://www.monstr.eu/fdt/
Microblaze U-BOOT custodian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
