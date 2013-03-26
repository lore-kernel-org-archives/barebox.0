Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKR5n-0002qp-Dd
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 10:27:00 +0000
Received: from mail171.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id F0102FF8F5E
 for <barebox@lists.infradead.org>; Tue, 26 Mar 2013 11:43:28 +0100 (CET)
Date: Tue, 26 Mar 2013 11:22:47 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130326102247.GO1568@game.jcrosoft.org>
References: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
 <5151687D.20905@monstr.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5151687D.20905@monstr.eu>
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
Subject: Re: [PATCH v4 0/5] ARM: add support for Zynq
To: Michal Simek <monstr@monstr.eu>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On 10:21 Tue 26 Mar     , Michal Simek wrote:
> Hi Steffen,
> 
> On 03/26/2013 10:11 AM, Steffen Trumtrar wrote:
> >Hi!
> >
> >This is mostly a repost of v3. Only changes are in 4/5.
> >The final image now gets always piped through zynq_mkimage. This is needed
> >anyway, so do it always.
> >This tool will eventually replace all the flash_header linker stuff, although
> >it is pretty simple on the Zynq.
> 
> I have signed to barebox mailing list today and I see that in the right time.
> It is little bit messy what you have sent.
> It is mix of v2/v3/v4 patches where it is not clear which version I should try.
> 
> Can you please resend the whole patchset as v5?
agreed just send a v5 no mix

Best Regards,
J.
> 
> Thanks,
> Michal
> 
> -- 
> Michal Simek, Ing. (M.Eng)
> w: www.monstr.eu p: +42-0-721842854
> Maintainer of Linux kernel 2.6 Microblaze Linux - http://www.monstr.eu/fdt/
> Microblaze U-BOOT custodian
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
