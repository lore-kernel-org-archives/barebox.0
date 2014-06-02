Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f41.google.com ([209.85.215.41])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrOmw-0008Pd-HR
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 09:44:19 +0000
Received: by mail-la0-f41.google.com with SMTP id e16so2434882lan.0
 for <barebox@lists.infradead.org>; Mon, 02 Jun 2014 02:43:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140602083813.GY15686@pengutronix.de>
References: <1401441248-15034-1-git-send-email-antonynpavlov@gmail.com>
 <20140602083813.GY15686@pengutronix.de>
Date: Mon, 2 Jun 2014 11:43:54 +0200
Message-ID: <CAOngqVXStG-x8DHA=8B0WVdzhQaKS-k+MzvEUkrGC1hNYOD26A@mail.gmail.com>
From: Daniele Lacamera <daniele.lacamera@tass.be>
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
Subject: Re: [RFC] net: picoping: try to make it asynchronious: fail
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Jun 2, 2014 at 10:38 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, May 30, 2014 at 01:14:08PM +0400, Antony Pavlov wrote:
> This must be solved in the pico_icmp4.c code. The counterpart of
> pico_tree_insert (pico_tree_delete?) must be called as an response to
> ctrlc().
>
> How I see it pico_icmp4_ping should return the cookie so that a ping
> abort function can be implemented:
>
> void pico_icmp4_ping_abort(struct pico_icmp4_ping_cookie *cookie)
> {
>         pico_tree_delete(cookie);
>
>         release_whatever_resources();
> }
>

Sascha,

I agree on this point. We are already working to provide abort calls
for both ping operations and DHCP transactions.
I will keep you posted.

Thanks

-- 
Daniele Lacamera

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
