Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWuVZ-0001ou-I7
 for barebox@lists.infradead.org; Tue, 22 May 2012 19:12:38 +0000
Received: by ggcs5 with SMTP id s5so6562286ggc.36
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 12:12:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120522182946.GL30400@pengutronix.de>
References: <20120517175244.GH30400@pengutronix.de>
 <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
 <1337334211-12576-7-git-send-email-agalakhov@gmail.com>
 <20120521200249.GF30400@pengutronix.de>
 <4FBB59AC.6050202@gmail.com>
 <20120522182946.GL30400@pengutronix.de>
Date: Wed, 23 May 2012 01:12:35 +0600
Message-ID: <CA+LT+-T6P=qyur4Txh9uN_C+krQUU0v=aW0GLsSxdWtFKnwkTg@mail.gmail.com>
From: Alexey Galakhov <agalakhov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv4 6/7] S5P DRAM support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> I see. In this case you could provide a s5p_init_dram_bank_ddr2 which
> does the setup for ddr2 ram. The linker will then throw away any other
> eventually compiled in s5p_init_dram_bank_* function. Code common to
> all sdram setup functions could still be shared without overhead.
>
> Sascha

Sounds good. Since all s5p_init_dram_bank_* share some common routines
that should be quite easy. I'll do that.

Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
