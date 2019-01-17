Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkEwF-0002xJ-Lh
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 21:11:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id m22so2574273wml.3
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 13:10:58 -0800 (PST)
MIME-Version: 1.0
References: <65aaade8-4825-e310-5006-b86df5f72f81@mev.co.uk>
In-Reply-To: <65aaade8-4825-e310-5006-b86df5f72f81@mev.co.uk>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 13:10:46 -0800
Message-ID: <CAHQ1cqGmLGkHQXDOQgasp0naeX5NomG9iODJrx0veAb_ByNGzQ@mail.gmail.com>
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
Subject: Re: barebox state alias with same name as node doesn't work
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 17, 2019 at 8:16 AM Ian Abbott <abbotti@mev.co.uk> wrote:
>
> Hi,
>
> All the examples of "barebox,state" compatible nodes I can find in
> Barebox seem to follow this basic pattern:
>
> / {
>    /* ... */
>    aliases {
>      /* ... */
>      state = &state;
>    };
>    /* ... */
>    state: state {
>      magic = <0xdeadbeef>; /* or whatever */
>      compatible = "barebox,state";
>      /* ... */
>    };
>    /* ... */
> };
>
> Note that the alias name is the same as the node name in the above example.
>
> However, when I try to follow that pattern for my own board, I get an
> error (-EINVAL):
>
> ERROR: register_device: already registered state
>
> This is because the node "state" has been already registered as a device
> called "state" by of_platform_device_create() (via of_probe() and
> of_arm_init()).  Later, the state device driver is initialized and
> state_probe() is called on the device that was previously registered.
> state_probe() calls state_new_from_node() which calls of_alias_get() to
> get the name of the alias for this device (the alias is also called
> "state" in this example), and calls state_new() with this alias name.
> state_new() allocates a struct state with an embedded struct device_d,
> sets the device name to the alias name it was called with ("state"), and
> calls register_device() to register this embedded struct device_d.  The
> call to register_device() fails with return value -EINVAL because the
> name is not unique.
>
> I'm wondering if this has ever worked or whether there is a regression
> bug.  I fixed it on my board by renaming node to "state_nor", keeping
> the alias name as "state".
>
> I'm currently using Barebox 2018.12.0, but I don't see any relevant
> changes in Barebox 2019.01.0 or barebox-next.
>

This should be fixed by:
http://lists.infradead.org/pipermail/barebox/2018-November/035432.html
I don't think it is a part of 2018.12.0, though

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
