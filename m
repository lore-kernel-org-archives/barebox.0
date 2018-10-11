Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAWHy-0000Zv-6t
 for barebox@lists.infradead.org; Thu, 11 Oct 2018 08:25:47 +0000
Received: by mail-pf1-x430.google.com with SMTP id u12-v6so4010676pfn.12
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2018 01:25:35 -0700 (PDT)
MIME-Version: 1.0
References: <CABAHDLdOVQwoeNKvWmOTADF5-Q1Az6hQXqDUrK60-wC+3P0Tzg@mail.gmail.com>
 <20181010071443.msez5a7yriayx2va@pengutronix.de>
 <1539158817.19112.52.camel@pengutronix.de>
 <CABAHDLdj2Ub8v8nAJ0u9S9mmH6WjUW7YM4=Vk7WkY9juq5ZcGA@mail.gmail.com>
In-Reply-To: <CABAHDLdj2Ub8v8nAJ0u9S9mmH6WjUW7YM4=Vk7WkY9juq5ZcGA@mail.gmail.com>
From: Patrick Huesmann <patrick.huesmann@gmail.com>
Date: Thu, 11 Oct 2018 10:25:23 +0200
Message-ID: <CABAHDLcicqMx4q_VAT3rtVy3_u+CyXqHYHa6uofbz7u=2N5otg@mail.gmail.com>
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
Subject: Re: bootchooser: constant decrement of remaining_attempts
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de

I've created a pull request for RAUC, if anyone needs this functionality:
https://github.com/rauc/rauc/pull/346

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
