Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UugoE-0004Kn-Eg
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 10:30:43 +0000
Received: from [192.168.10.59] (p4FC1B07C.dip0.t-ipconnect.de [79.193.176.124])
 by knowtrek.com (Postfix) with ESMTPSA id 13CAC2EF831C
 for <barebox@lists.infradead.org>; Thu,  4 Jul 2013 12:30:16 +0200 (CEST)
Message-ID: <51D54EB7.2060702@knowtrek.com>
Date: Thu, 04 Jul 2013 12:30:15 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B0B2D6.3030407@knowtrek.com> <51D44181.6090503@knowtrek.com>
 <20130703165835.GP516@pengutronix.de> <51D46DB2.90002@knowtrek.com>
 <20130703202635.GR516@pengutronix.de>
In-Reply-To: <20130703202635.GR516@pengutronix.de>
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
Subject: Re: set root variable for uImage?
To: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 03.07.2013 22:26, Sascha Hauer wrote:
> On Wed, Jul 03, 2013 at 08:30:10PM +0200, Adam Furmanczuk wrote:
>> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>> 
>> - -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>> 
>> On 03.07.2013 18:58, Sascha Hauer wrote:
>>> Hi Adam,
>>> 
>>> On Wed, Jul 03, 2013 at 05:21:37PM +0200, Adam Furmanczuk
>>> wrote:
>>>> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>>>> 
>>>> Hi,
>>>> 
>>>> I restate this question from my previous thread "how to flash
>>>> and set root variable". Thanks very much to Sascha and
>>>> Alexander for introducing into barebox building and
>>>> flashing.
>>>> 
>>>> I have a basic scenario. Want to boot uImage and then hand
>>>> over to the root partition. With u-Boot this was very easy:
>>>> 
>>>> setenv bootargs "console=tty0 console=ttymxc0,115200n8 
>>>> root=/dev/mmcblk0p3 rootfstype=ext4 rootwait ro"
>>>> 
>>>> With barebox however, when I boot the uImage, it complains
>>>> about not setting correct "root=".:
>>>> 
>>>> [ 1.718527] VFS: Cannot open root device "(null)" or 
>>>> unknown-block(0,0): error -6 [ 1.726226] Please append a
>>>> correct "root=" boot option; here are the available
>>>> partitions:
>>>> 
>>>> Now what i do in Barbox is the following;
>>>> 
>>>> (hint enter to go into console) barebox@myhost:/ mkdir
>>>> /media2 barebox@myhost:/ mount /dev/disk0.1 fat /media2
>>>> barebox@myhost:/ bootm /media2/uImage root=/dev/mmcblk0p3
>>>> rootfstype=ext4
>>> 
>>> the bootm command evaluates the 'bootargs' environment
>>> variable, so before executing bootm do a:
>>> 
>>> export bootargs="root=/dev/mmcblk0p3 rootfstype=ext4"
>>> 
>>> (sidenote: This is not documented with 'help bootm', shame on
>>> us. Try the 'magicvar' command instead which lists all
>>> variables with special meanings)
>>> 
>>> Sascha
>>> 
>> 
>> Hi Sascha,
>> 
>> it does not seem to work for me, I typed:
>> 
>> mkdir /mnt/disk1 bootargs="root=/dev/mmcblk0p3 rootfstype=ext4" 
>> mount /dev/disk0.1 fat /mnt/disk1 bootm /mnt/disk1/uImage
>> 
>> 
>> I choose different values for root, like
>> "mmcblk0p3","/dev/mmcblk0p1", "b303" ...
>> 
>> I am running MX53QSB with barebox 2013.05 build get this output:
> 
> The kernel normally prints the commandline during startup. Could
> you post it?
> 
> Then, are you using some defconfig or do you you have out of tree 
> patches?
> 
> Also, could you post the output of 'devinfo global'?
> 
> Sascha
> 


Hi Sascha, hi Alexander,

rootwait parameter in bootargs did not helped. I compiled barebox and
kernel Image from busybox. I added in busybox extra defconfig
parameter for the imx53 board for barebox. No extra pachtes. Have sdma
module in root partion in /lib directory, but it never change-roots to
that partition anyway.

With u-Boot the same bootargs are OK. My new project requires to use
barebox.

Output of devinfo global [1] and bootlog [2]

Greetings,

Adam


[1] http://pastebin.com/yyQjtpbT
[2] http://pastebin.com/4PxUnm0Q

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlHVTrcACgkQefEEI87R1DcUNACfQ1F2Ajoj/6tHtOelMpdsasxh
6EIAnRdllUVEmaC0ebHUJj4H5RP4mN6/
=Nd2i
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
