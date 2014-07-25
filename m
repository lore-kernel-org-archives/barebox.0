Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAa5i-0006BL-Hz
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 07:38:59 +0000
Date: Fri, 25 Jul 2014 09:38:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140725073835.GI23282@pengutronix.de>
References: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
 <1405370916-6828-5-git-send-email-antonynpavlov@gmail.com>
 <20140718054413.GL23235@pengutronix.de>
 <20140718113626.19aba6e8e971f15944a6ff93@gmail.com>
 <CAOpc7mEHJFktB5v=uRqLUWgEdzHA05KmFmC3_ix+gfooO-0MKw@mail.gmail.com>
 <20140720095522.41f6874de19b368a29573cf7@gmail.com>
 <20140721064106.GS23235@pengutronix.de>
 <20140721111025.4a0d6d2c1ef5977e1d45f152@gmail.com>
 <20140721081150.GT23235@pengutronix.de>
 <20140721194150.1d5ea1f772f27fb02e267f42@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140721194150.1d5ea1f772f27fb02e267f42@gmail.com>
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
Subject: Re: [RFC v3 4/5] commands: add hwclock
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jul 21, 2014 at 07:41:50PM +0400, Antony Pavlov wrote:
> On Mon, 21 Jul 2014 10:11:50 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> 
> busybox realization
> ===================
> 
> Here is parse_datestr() (barebox.git/libbb/time.c) date format list:
> 
> #if ENABLE_FEATURE_DATE_COMPAT 
> /* MMDDhhmm[[CC]YY][.ss] */  ---  weird 'date' format
> #endif
> 
> /* HH:MM[:SS] */
> /* mm.dd-HH:MM[:SS] */
> /* yyyy.mm.dd-HH:MM[:SS] */
> /* yyyy-mm-dd HH:MM[:SS] */
> 
> /* month_name d HH:MM:SS YYYY */ --- I suppose we don't want to mess with mount_name :)
> /* yyyy-mm-dd HH */
> /* yyyy-mm-dd */
> 
> /* MM[.SS] */
> /* HHMM[.SS] */
> /* ddHHMM[.SS] */
> /* mmddHHMM[.SS] */
> /* yymmddHHMM[.SS] */
> /* ccyymmddHHMM[.SS] */ --- this format is used in RFCv3 patchseries.

I am happy with this format. This is just what I would have typed if I
had guessed the correct format.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
