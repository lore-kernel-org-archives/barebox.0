Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x22b.google.com ([2607:f8b0:400d:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHk7e-0006gm-CX
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 03:55:38 +0000
Received: by mail-qk0-x22b.google.com with SMTP id t127so8032657qkf.1
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 20:55:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160624121836.4e135381362094aca7cc03e2@gmail.com>
References: <1466746535-17382-1-git-send-email-andrew.smirnov@gmail.com>
 <1466746535-17382-5-git-send-email-andrew.smirnov@gmail.com>
 <20160624121836.4e135381362094aca7cc03e2@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 Jun 2016 20:55:16 -0700
Message-ID: <CAHQ1cqFKTwb9mDYJ-O0MQJiUZmtCu35hGE9NoBnB_szFUu3RFA@mail.gmail.com>
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
Subject: Re: [PATCH v2 4/4] video/edid: Move int_sqrt() out
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Jun 24, 2016 at 2:18 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> On Thu, 23 Jun 2016 22:35:35 -0700
> Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> I suppose that this patch has to be applied __before__ '[PATCH v2 3/4] GUI: Add fbtest command'.

Darn, my bad. Will re-arrange properly in v3.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
