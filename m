Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAxqN-0005lw-KN
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 14:23:25 +0000
Date: Mon, 1 Apr 2019 16:23:21 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190401142321.z7a2lrfca3ogkksx@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-3-a.fatoum@pengutronix.de>
 <20190401123232.dbk72tfuxmq5lvdy@pengutronix.de>
 <7e87f069-4573-97dc-1d38-c6ce520d3fcc@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e87f069-4573-97dc-1d38-c6ce520d3fcc@pengutronix.de>
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
Subject: Re: [PATCH v3 02/15] ARM: at91: import at91bootstrap's at91_ddrsdrc.h
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

On Mon, Apr 01, 2019 at 03:36:06PM +0200, Ahmad Fatoum wrote:
> Hello Roland,
> 
> On 4/1/19 2:32 PM, Roland Hieber wrote:
> > On Mon, Apr 01, 2019 at 12:18:10PM +0200, Ahmad Fatoum wrote:
> >> Instead of adding missing definitions to the existing at91sam9_ddrsdr.h
> >> and adapting the incoming DDRAM initialization code from at91bootstrap,
> >> just replace the lightly used existing header with:
> >> https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/include/arch/at91_ddrsdrc.h
> >>
> >> For easier comprehension, the replacement is done in three steps:
> >> Here the header is imported.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 288 ++++++++++++++++++
> >>  1 file changed, 288 insertions(+)
> >>  create mode 100644 arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> >>
> >> diff --git a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> >> new file mode 100644
> >> index 000000000000..57d0d8f489c4
> >> --- /dev/null
> >> +++ b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> >> @@ -0,0 +1,288 @@
> >> +// SPDX-License-Identifier: BSD-1-Clause
> > 
> > I've told you this in our personal converation before, but I'll happily
> > repeat it here for a broader audience: The original GitHub source says
> > 
> >     * DISCLAIMER: THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR
> >     * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> >     * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
> >     * DISCLAIMED.
> > 
> > which additionally disclaims warranty for "NON-INFRINGEMENT", which is
> > not in BSD-1-Clause text you added in the previous commit. I regard this
> > as a substantive change of the licensing conditions according to the
> > SPDX License List Matching Guidelines [s] and rather use the original
> > license headers here as long as there is no SPDX license identifier for
> > it.
> To restate my opinion:
> Atmel already disclaims ANY EXPRESS or IMPLIED WARRANTIES, which should
> include NON-INFRINGEMENT regardless if whether it was explicitly listed
> or not.

Ah, good, it seems I misinterpreted your argument earlier. Sorry, so no
objections from my side then.

 - Roland

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
