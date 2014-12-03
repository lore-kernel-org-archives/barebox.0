Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x230.google.com ([2607:f8b0:400d:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xw9vO-0000pS-HG
 for barebox@lists.infradead.org; Wed, 03 Dec 2014 13:24:59 +0000
Received: by mail-qg0-f48.google.com with SMTP id q107so10716931qgd.7
 for <barebox@lists.infradead.org>; Wed, 03 Dec 2014 05:24:35 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20141203090355.GP30369@pengutronix.de>
References: <1417535561-21750-1-git-send-email-andrew.smirnov@gmail.com>
 <20141203090355.GP30369@pengutronix.de>
Date: Wed, 3 Dec 2014 05:24:35 -0800
Message-ID: <CAHQ1cqGQRLup44RvT43vRJxvv2UJKkJMiUkhwc1-kt_PiyptHQ@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] i.MX6: phytec: Distil different startup functions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

[Re-sending since "Google Inbox" converted my original mail to HTML]

On Wed, Dec 3, 2014 at 1:03 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Dec 02, 2014 at 07:52:40AM -0800, Andrey Smirnov wrote:
>> Distil different startup functions into a generic one, different
>> behavioral aspects of which can be influenced by its parameters.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>
> Looks good. This neither applies on master nor on next. Can you resend
> this based on next?
>

Hmmm, you're absolutely right. I did rebase my branch on top of next,
but I didn't test if the patch applies to a fresh clone of the
repo(which I should have done). I apologize for this oversight on my
part. I'll work on the patch and send the new version.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
