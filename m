Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ia0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TenP6-0007nD-QJ
 for barebox@lists.infradead.org; Sat, 01 Dec 2012 13:46:49 +0000
Received: by mail-ia0-f177.google.com with SMTP id u21so1038020ial.36
 for <barebox@lists.infradead.org>; Sat, 01 Dec 2012 05:46:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1212010818090.13158@oneiric>
References: <alpine.DEB.2.02.1212010809040.13064@oneiric>
 <alpine.DEB.2.02.1212010818090.13158@oneiric>
Date: Sat, 1 Dec 2012 17:46:45 +0400
Message-ID: <CAA4bVAHj_Q12r087kYOvwXj+9vRb1cFANa7nMUKTQzH+qmmEAw@mail.gmail.com>
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
Subject: Re: how does barebox deal with more than one environment?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On 1 December 2012 17:19, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Sat, 1 Dec 2012, Robert P. J. Day wrote:
>
>>
>>   writing up a simple barebox exercise for students and on this page:
>>
>> http://wiki.barebox.org/doku.php?id=user:first_steps
>>
>> it seems clear(?) that you can define multiple environments that will
>> appear at /dev/env0, /dev/env1, etc, but that page also claims that
>> *only* the configuration on /dev/env0 will be executed automatically
>> if barebox finds that it's a valid configuration sector.
>>
>>   so what happens with the additional environments?  that page doesn't
>> make it clear.  i'm just about to read the source to see if i can
>> figure this out.
>
>   oh, wait, i think i see ... the "loadenv" command will load a given
> environment into a directory so i'm *assuming* that additional
> environments are simply available to be loaded, but /dev/env0 is the
> only one treated special.  or feel free to correct me if i'm
> hopelessly wrong.

See common/startup.c:110

#ifdef CONFIG_ENV_HANDLING
        if (envfs_load(default_environment_path, "/env")) {
#ifdef CONFIG_DEFAULT_ENVIRONMENT
                printf("no valid environment found on %s. "
                        "Using default environment\n",
                        default_environment_path);
                envfs_load("/dev/defaultenv", "/env");
#endif

By default  default_environment_path="/dev/env0", but it can be
overwritten in a board code (e.g. see arch/arm/boards/panda/board.c).

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
