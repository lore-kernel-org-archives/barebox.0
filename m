Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Um5Td-0007od-1z
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 17:01:53 +0000
Received: from [192.168.10.59] (p4FC13FA4.dip0.t-ipconnect.de [79.193.63.164])
 by knowtrek.com (Postfix) with ESMTPSA id 661162EF835F
 for <barebox@lists.infradead.org>; Mon, 10 Jun 2013 19:01:30 +0200 (CEST)
Message-ID: <51B6066A.5020801@knowtrek.com>
Date: Mon, 10 Jun 2013 19:01:30 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B0B2D6.3030407@knowtrek.com>
 <20130606162120.GA32299@pengutronix.de> <51B5C56C.4050801@knowtrek.com>
In-Reply-To: <51B5C56C.4050801@knowtrek.com>
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
Subject: Re: how to flash barebox and set root variable? - barebox is gone :(
To: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

One thing to add:

I managed to run tftpd-hpa server on my debian box and tried to update
kernel to nor0.kernel. I run:

update -t kernel -d barebox -d nor -m tftp -f barebox.bin

Which gave me output [1], obviously tftp is wrong configured. When I
mount with filesystem tftp and copy with cp I get the files.

Well I did the same with barebox, just to make sure. It also ereased
first and then complained it cannot run tftp (I had probably an
interrupt at my brain to perform that action ;) )

With barebox still in ram I tried to rescue it somehow..

So i copied barebox.bin from my tftp drive. created empty file tftp in
/env/bin and got a promising output [2], i tried to unprotect the nor
flash just to make sure.

Now where there is supposed to be barebox loading, there is nothing :)
My barebox is gone.

Thanks for comments, Greetings,

Adam




[1] barebox output update with tftp:
phy0: Link is up - 100/Full
host 192.168.10.59 is alive
cfi_protect: unprotect 0xf0100000 (size 7340032)


erasing partition /dev/nor0.kernel

	[#################################################################]

flashing barebox.bin to /dev/nor0.kernel

Unknown command 'tftp' - try 'help'



[2] barebox output update with hack:

erasing partition /dev/nor0.barebox

	[#################################################################]

flashing barebox.bin to /dev/nor0.barebox

cfi_protect: protect 0xf0000000 (size 917504)




> Hello Sascha,
> 
>> What to do next depends on the environment you have. Please send 
>> the output of 'ls -l /env'.
> 
> 
> that would be:
> 
> drwxrwxrwx          0 . drwxrwxrwx          0 .. -rwxrwxrwx
> 1230 config drwxrwxrwx          0 bin
> 
> contents of /env/bin is:
> 
> -rwxrwxrwx        817 _update_help -rwxrwxrwx        447
> update_nfs -rwxrwxrwx       1362 update -rwxrwxrwx        285 mv 
> -rwxrwxrwx       3445 boot -rwxrwxrwx        590 init -rwxrwxrwx
> 21 hush_hack -rwxrwxrwx        571 _boot_help -rwxrwxrwx        702
> _update
> 
> and ls -l /dev prints:
> 
> cr-------- 4294967295 zero crw-------  536870912 ram0 crw-------
> 11108 defaultenv crw------- 4294967295 mem crw-------         64
> phy0 crw------- 3616538624 disk0 crw-------    4193792 disk0.0 
> crw-------   54525952 disk0.1 crw-------    8388608 nor0 crw-------
> 917504 self0 crw-------     131072 env0 crw-------     917504
> nor0.barebox crw-------     131072 nor0.bareboxenv crw-------
> 7340032 nor0.kernel
> 
> well, have tried to make an barebox.bin start disk with the cat 
> barebox.bin > /dev/sdX, but not sure how to proceed to run from
> sd-card.
> 
> On a different try, I copied barebox.bin on a fat12 sd partition
> and tried to update on the mounted partion:
> 
> update -t barebox -d nor -f barebox.bin
> 
> but the syntax is:
> 
> type update -t barebox -d <nor|nand> [-m tftp|xmodem|nfs] [-f 
> imagename] to update barebox into flash
> 
> "-m" does not give my disk as source, so I guess I have to get tftp
> to work..
> 
>> I haven't downloaded the CD images they provide. Do you know 
>> whether there are barebox sources provided on the CDs?
> 
> On CD there is basically buildroot and the config files for barebox
> I have attached to this mail.
> 
> 
> Just to recall: my problem is that i do not know how to provide 
> "root=" parameter to my barebox environemnt. I load the zImage by 
> mounting partition by hand and running "bootm".
> 
> Thanks for help, Greetings,
> 
> Adam
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> _______________________________________________ barebox mailing
> list barebox@lists.infradead.org 
> http://lists.infradead.org/mailman/listinfo/barebox

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlG2BmkACgkQefEEI87R1DeEcgCeJixbOwIsMm82PQcLp2AmAzW5
uDkAoNg84RmdVE/n+4T28rHavEQUXjRx
=5A2e
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
