Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x230.google.com ([2a00:1450:4013:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCRft-0001vM-OY
 for barebox@lists.infradead.org; Sun, 09 Feb 2014 10:31:46 +0000
Received: by mail-ea0-f176.google.com with SMTP id h14so2353579eaj.21
 for <barebox@lists.infradead.org>; Sun, 09 Feb 2014 02:31:22 -0800 (PST)
Message-ID: <52F758F1.3060706@gmail.com>
Date: Sun, 09 Feb 2014 11:31:13 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1391866056-13133-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140209083614.GA17250@pengutronix.de>
In-Reply-To: <20140209083614.GA17250@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH RFC] ARM: dove: build multiple pbl images for DT based
 boards
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 02/09/2014 09:36 AM, Sascha Hauer wrote:
> On Sat, Feb 08, 2014 at 02:27:36PM +0100, Sebastian Hesselbarth wrote:
[...]
>> What I want to achieve is to have a common pbl entry function for all
>> DT based boards of one SoC. For now, let's just talk about Marvell Dove
>> here, but on the long run, I'd like to have it also for the other MVEBU
>> SoCs. Right now, I guess, each SoC will still have its own "DT board"
>> but it could also end up in one board for all MVEBU SoCs..
[...]
>> Now, for having one board file for a set of selectable dtbs, you would
>> need a single entry function name and also a single symbol to access
>> the linked dtb at runtime. In the example for Dove below, I have chosen
>> start_dove_dt for the entry function and __linked_dtb_start for the
>> required dtb.
>
> It's not quite clear to me what you want to archieve or maybe better why
> you want to archieve it. Right now there are board specific entry
> functions, with 'board' meaning everything that you can't detect during
> runtime. So if want to support multiple boards and can detect during
> runtime on which one you are on then you can use a single entry
> function, detect the board and pass the correct dtb to
> barebox_arm_entry. If you can't detect the board then you need different
> images, one per board. An image is defined by its entry function. Why do
> you want to make the entry function common per SoC? I mean if there's
> some SoC specific setup that every board of a SoC type needs, then you
> can factor it out to a common function and call mvebu_setup_something()
> in each entry function or make a mvebu_barebox_entry like we already
> have.
> I think the entry functions are short and easy enough to duplicate them
> per board. Also it gives you the chance to do board specific quirks very
> early without having to #ifdef common code.

Well, the idea was clearly driven from me being too lazy to copy the
board code for every supported board we have. For example, there are
three different CuBox revisions around, ES, Production 1GB, and 2GB.
You can detect the 2GB version at runtime from the mem region registers,
but you cannot tell ES and 1GB apart.

Also, currently you cannot really select a different dtb for e.g. the
CuBox because the board code depends on __dtb_dove_cubox_start.
Choosing a different dtb e.g. dove-cubox-1gb.dts will break the board
code because of the missing symbol.

With one single board code and selectable dtbs, you would link only
one dtb at link time and get another layer of differentiation for free
without bloating the code with multiple dtbs. I admit, "real" board
specific quirks would have to be dealt with somehow.

Maybe the idea is non-sense, but I though giving the user a list of
currently supported boards from which he can select from and get
boot images for every board selected would be nicer than spreading
the same board code over and over again in arm/boards/.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
