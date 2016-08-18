Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baTMO-0004W1-4v
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 19:52:22 +0000
Date: Thu, 18 Aug 2016 21:48:21 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <1471504820.129571485@f170.i.mail.ru>
Message-ID: <alpine.DEB.2.00.1608182142360.12656@blala.de>
References: <1471439539-3443-1-git-send-email-akurz@blala.de>
 <20160818071542.GJ20657@pengutronix.de> <1471504820.129571485@f170.i.mail.ru>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED;
 BOUNDARY="-598520180-183647676-1471549718=:12656"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re[2]: [PATCH] mfd mc13xxx: add MC13892_REVISION_2_4
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---598520180-183647676-1471549718=:12656
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit



On Thu, 18 Aug 2016, Alexander Shiyan wrote:

> >Четверг, 18 августа 2016, 10:15 +03:00 от Sascha Hauer <s.hauer@pengutronix.de>:
> >
> >On Wed, Aug 17, 2016 at 03:12:19PM +0200, Alexander Kurz wrote:
> >> An MC13892CJ having REV[4:0]=0x14 can be found in the kindle-d01100.
> >> Add the revision to the list to support this device.
> >> 
> >> Signed-off-by: Alexander Kurz < akurz@blala.de >
> >> ---
> >>  drivers/mfd/mc13xxx.c |  1 +
> >>  include/mfd/mc13xxx.h | 13 +++++++------
> >>  2 files changed, 8 insertions(+), 6 deletions(-)
> ...
> >>  #define MC13892_REVISION_2_03
> >>  #define MC13892_REVISION_2_0a4
> >>  #define MC13892_REVISION_2_15
> >> -#define MC13892_REVISION_3_06
> >> -#define MC13892_REVISION_3_17
> >> -#define MC13892_REVISION_3_28
> >> -#define MC13892_REVISION_3_2a9
> >> -#define MC13892_REVISION_3_310
> >> -#define MC13892_REVISION_3_511
> >> +#define MC13892_REVISION_2_46
> >> +#define MC13892_REVISION_3_07
> >> +#define MC13892_REVISION_3_18
> >> +#define MC13892_REVISION_3_29
> >> +#define MC13892_REVISION_3_2a10
> >> +#define MC13892_REVISION_3_311
> >> +#define MC13892_REVISION_3_512
> 
> Could this be converted to enum?
Personally I also prefer the enum since it enables e.g. gdb 
awareness on the enum elements, depending on compiler and usecase
it may offer type and value range safety and in this case, the diff
would be smaller.

Is there a coding policy for barebox regarding macros vs. enums?
---598520180-183647676-1471549718=:12656
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

---598520180-183647676-1471549718=:12656--
