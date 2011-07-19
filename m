Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjAXD-0002CB-Gx
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 13:40:32 +0000
Received: by wwf22 with SMTP id 22so3032820wwf.18
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 06:40:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 17:40:22 +0400
Message-ID: <CAA4bVAHUF+VuSPgr1EBt1uCP+r5AnHvsw19-cJ1UNWwHKxNfWw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/7] device: introduce resource structure to simplify
	resource declaration
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On 16/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> and add multi resource per device support
>
> for now we keep the old map_base and size temporary but will switch all of
> the used step by step to them resource way
>
> and mirror the first resource to the map_base and size if available
>

> +++ b/include/linux/ioport.h
...
> +struct resource {
> +	resource_size_t start;
> +	resource_size_t size;
> +	const char *name;
> +	unsigned long flags;
> +};

In linux-2.6.39/include/linux/ioport.h:

struct resource {
        resource_size_t start;
        resource_size_t end;
        const char *name;
        unsigned long flags;
        struct resource *parent, *sibling, *child;
};

So there is incompatability: barebox has 'size' field, but linux  has
'end' field instead.

Can you comment this, please?

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
