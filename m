Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6JE0-0005b4-5u
 for barebox@lists.infradead.org; Tue, 19 Mar 2019 18:12:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id f8so2850501wmh.0
 for <barebox@lists.infradead.org>; Tue, 19 Mar 2019 11:12:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
 <20190313094202.14901-5-s.hauer@pengutronix.de>
In-Reply-To: <20190313094202.14901-5-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Mar 2019 11:12:19 -0700
Message-ID: <CAHQ1cqFa97quXr6AW12AJKSbQ4+pN_TG71dNG83RrHVDBGSs8Q@mail.gmail.com>
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
Subject: Re: [PATCH 04/15] ARM: Add arm64 pbl udelay
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Mar 13, 2019 at 3:27 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> PBL often needs a way to udelay execution. Since we have a generic timer
> in ARMv8 we can implement a generic udelay.
>

Now that get_cntpct() and get_cntfrq() are implemented for ARMv7 we
can probably extend this to both ARMv8 and ARMv7.

Thanks
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
