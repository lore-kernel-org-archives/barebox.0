Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f50.google.com ([74.125.82.50])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQieB-0004qj-3p
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 18:56:44 +0000
Received: by mail-wg0-f50.google.com with SMTP id f12so6254775wgh.5
 for <barebox@lists.infradead.org>; Mon, 30 Sep 2013 11:56:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130930153846.GC30088@pengutronix.de>
References: <CAO-21LP2aK6Zwphamv2Zj_-Y1YWt6xNX6GZSUVrHreALsaJQsg@mail.gmail.com>
 <20130930153846.GC30088@pengutronix.de>
Date: Mon, 30 Sep 2013 13:56:16 -0500
Message-ID: <CAO-21LNumyaH+gZDkyPnejnQ9nxESDF9DABh_65bA-7oOFPBNA@mail.gmail.com>
From: "Allen Kennedy Jr." <allen@kennedystuff.com>
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
Subject: Re: Is Relocation forced?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox Mailing list <barebox@lists.infradead.org>

Sascha,
  I figured out the issue.  'scp' was not copying my new version..
and not indicating failure.
Once i deleted the old bin and copied a new one, i see it is running
without relocation.

Sorry.

On Mon, Sep 30, 2013 at 10:38 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Allen,
>
> On Mon, Sep 30, 2013 at 09:24:17AM -0500, Allen Kennedy Jr. wrote:
>> Hello,
>>   I have relocatable binary set to "n"  and I load barebox into ram
>> exactly where it is supposed to be, but it still runs the function
>> "relocate binary"
>>
>>   Is the option to not relocate barebox, not supported?
>>
>> Why would I want it not-relocated?  Because relocate_to_current_adr()
>> causes an exception every time, and barebox won't boot.  And I can't
>> figure out why the exception occurs.
>
> Generally relocatable barebox is not enforced and barebox runs happily
> without it. However, there are some combinations of PBL/TEXT_BASE which
> really do need relocation support.
>
> What SoC/board are you running? Could you post your .config file?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
