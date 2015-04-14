Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x22f.google.com ([2607:f8b0:4001:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi6oa-000169-4u
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 19:48:08 +0000
Received: by iecrt8 with SMTP id rt8so11605807iec.0
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 12:47:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150414183914.GC9742@pengutronix.de>
References: <1428927090-4310-1-git-send-email-andrew.smirnov@gmail.com>
 <20150414183914.GC9742@pengutronix.de>
Date: Tue, 14 Apr 2015 12:47:46 -0700
Message-ID: <CAHQ1cqFU1waM3z8D1ZKDb3zqPyP2GtYAovZo-RZ9Ag2=sCywow@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] firmware: socfpga: Add necessary dependency to Kconfig
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Apr 14, 2015 at 11:39 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Apr 13, 2015 at 05:11:30AM -0700, Andrey Smirnov wrote:
>> ---
>>  drivers/firmware/Kconfig | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> This patch lacks a signed-off-by. Could you resend it?

I figured tat since this was just a one line in a build configuration
file it would be too trivial for copyright assignment, but I can add
the signed-off-by line in the next version of the patch.


>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
