Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIlQa-0007o0-Ra
 for barebox@lists.infradead.org; Wed, 26 Feb 2014 20:50:06 +0000
Received: by mail-pb0-f45.google.com with SMTP id un15so1509743pbc.32
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2014 12:49:38 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 26 Feb 2014 15:49:37 -0500
Message-ID: <CAO6XYUt7KaraGNUkTuEkQXKbh0f6MH4Ywn8dDJQpo1RkT2CaSw@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: i.MX6Q Boot from NAND
To: barebox@lists.infradead.org

>Hi ANdreas,
>
>On Wed, Feb 26, 2014 at 07:30:59AM +0100, andreas.willig at rafi.de wrote:
>> Hi,
>>
>> has anyone in the community successfully managed to get Barebox
>> running out of NAND on i.MX6Q/DL? I cannot find any support for BCB /
>> FCB in the BB sources and am hitting problems while migrating from
>> i.mx28 (MXS?) sources of BCB. U-Boot seems to run from NAND on i.MX6Q
>> but is not an option for our project.
>
>So far I used kobs-ng for doing this, I didn't have luck with migrating
>the i.MX28 BCB code so far. Somebody asked the same question a while
>ago, but I can't remember who it was. He didn't report success so far
>either.
>
>Sascha

Andreas,

The person Sascha remembers asking about this was probably me.

I've started working on porting the bcb generation code from kobs-ng
over to barebox but haven't gotten it working either (and haven't had
time to work on it in several weeks).

That said, barebox itself works and boots fine from NAND as long as
you use kobs-ng to put it there. The other partitions can be written
to without issue from barebox directly (i.e. kernel, environment,
root, etc).

What I do:
Boot all the way to Linux command line on the target, making sure that
my barebox-*.img file is available either on USB flash or SD.

Then from the Linux command line:

kobs-ng init barebox-(whatever).img --search_exponent=1

After this, barebox should boot up nicely from NAND.

Eventually, I may get back to finishing up porting the bcb code, but
it won't be in the near future due to other schedule constraints.

Michael Burkey

PS...
Out of curiosity, which SOM are you using that boots from NAND?
I'm currently working with Variscite's SOM -- and life would have been
much simpler if someone had just put a SPI NOR on it!

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
