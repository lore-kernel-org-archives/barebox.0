Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward100o.mail.yandex.net ([2a02:6b8:0:1a2d::600])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g0shf-0002Kt-SA
 for barebox@lists.infradead.org; Fri, 14 Sep 2018 18:20:30 +0000
From: =?utf-8?B?0J/QsNC90L7QsiDQkNC90LTRgNC10Lk=?= <rockford@yandex.ru>
In-Reply-To: <20180913123746.GA18653@ravnborg.org>
References: <1597963.4YffofffW7@think-future.de>
 <20180913123746.GA18653@ravnborg.org>
MIME-Version: 1.0
Date: Fri, 14 Sep 2018 21:20:04 +0300
Message-Id: <8463281536949204@iva4-f774db2b5297.qloud-c.yandex.net>
Content-Type: multipart/mixed;
 boundary="----==--bound.846329.iva4-f774db2b5297.qloud-c.yandex.net"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: rk3188 (radxa rock pro) boot failure w/ barebox 2018-04 and later
To: Sam Ravnborg <sam@ravnborg.org>, "perachet7@gmail.com" <perachet7@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


------==--bound.846329.iva4-f774db2b5297.qloud-c.yandex.net
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"

Hi!

Attached patch fixed the problem.

in arch/arm/cpu/uncompress.c global_variable_offset() was called before relocation.

And we have TEXT_BASE = 0 (since CONFIG_*_RELOCATABLE is set and it is not configurable)

Arch memory starts at 0x60000000 and image linked at 0x0, so global_variable_offset() returns 0x60000000

We're running around 0x60000000 and at
       image_end = (void *)&image_end_marker + global_variable_offset();
&image_end_marker is 0x6000XXXXX
image_end goes at 0x60000000 more than it is actually

After relocation global_variable_offset() becomes zero.

So if we move 
       image_end = (void *)&image_end_marker + global_variable_offset();
after relocation it will point to right location.

I am not sure it is true for all architectures, but in current state it is wrong when memory is not starts at 0.

13.09.2018, 15:38, "Sam Ravnborg" <sam@ravnborg.org>:
> Hi S.
>
> On Thu, Sep 13, 2018 at 01:18:54PM +0200, perachet7@gmail.com wrote:
>>  Hey list,
>>
>>  Between 2018-04 and 2018-05 tar release, barebox stops booting on rk3188
>>  (radxa rock pro).
>>
>>  A git bisect reveals (see end of mail for commit detail):
>>          first bad commit: [2a94e821ba2e64890ac47b9ba177c7b6585b23be] ARM: For
>>  relocatable image force TEXT_BASE 0x0.
>>
>>  As was suggested on #barebox, I tried setting TEXT_BASE=0x10 at this commit
>>  but it's a no fix.
>>
>>  It is however booting even later releases if the trailing "if !RELOCATABLE" is
>>  removed. I have yet to have a deeper look at the code modified by
>>  HAVE_CONFIGURABLE_TEXT_BASE and RELOCATABLE.
>>
>>  Furthermore, it seems the commit itself is only triggering a boot failure. The
>>  proper code causing it is probably hiding someplace else.
>>
>>  Any direction, ideas or hints given is appreciated.
>
> I was hit by a do-not-boot issue as well after upgrading to 2018.05.
> In my case this was due to a fix to get_runtime_offset()
> It turned out that I had subtraced the value, not added.
> Looks like an artifict from some code I copied some time ago.
>
> Maybe this hint can help you, and maybe this is totally unrelated.
>
> Good luck chasing it down.
>
>         Sam
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- 
Андрей
------==--bound.846329.iva4-f774db2b5297.qloud-c.yandex.net
Content-Disposition: attachment;
	filename="variable_offset.diff"
Content-Transfer-Encoding: base64
Content-Type: text/x-diff;
	name="variable_offset.diff"

ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NwdS91bmNvbXByZXNzLmMgYi9hcmNoL2FybS9jcHUvdW5j
b21wcmVzcy5jCmluZGV4IGIwNzA4N2U0Yy4uNzA4YzA0YzFmIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9jcHUvdW5jb21wcmVzcy5jCisrKyBiL2FyY2gvYXJtL2NwdS91bmNvbXByZXNzLmMKQEAgLTUw
LDggKzUwLDYgQEAgdm9pZCBfX25vcmV0dXJuIGJhcmVib3hfbXVsdGlfcGJsX3N0YXJ0KHVuc2ln
bmVkIGxvbmcgbWVtYmFzZSwKICAgICAgICB2b2lkICpwZ19zdGFydDsKICAgICAgICB1bnNpZ25l
ZCBsb25nIHBjID0gZ2V0X3BjKCk7CiAKLSAgICAgICBpbWFnZV9lbmQgPSAodm9pZCAqKSZpbWFn
ZV9lbmRfbWFya2VyICsgZ2xvYmFsX3ZhcmlhYmxlX29mZnNldCgpOwotCiAgICAgICAgaWYgKElT
X0VOQUJMRUQoQ09ORklHX1BCTF9SRUxPQ0FUQUJMRSkpIHsKICAgICAgICAgICAgICAgIC8qCiAg
ICAgICAgICAgICAgICAgKiBJZiB3ZSBydW4gZnJvbSBpbnNpZGUgdGhlIG1lbW9yeSBqdXN0IHJl
bG9jYXRlIHRoZSBiaW5hcnkKQEAgLTY0LDYgKzYyLDggQEAgdm9pZCBfX25vcmV0dXJuIGJhcmVi
b3hfbXVsdGlfcGJsX3N0YXJ0KHVuc2lnbmVkIGxvbmcgbWVtYmFzZSwKICAgICAgICAgICAgICAg
ICAgICAgICAgcmVsb2NhdGVfdG9fYWRyKG1lbWJhc2UpOwogICAgICAgIH0KIAorICAgICAgIGlt
YWdlX2VuZCA9ICh2b2lkICopJmltYWdlX2VuZF9tYXJrZXIgKyBnbG9iYWxfdmFyaWFibGVfb2Zm
c2V0KCk7CisKICAgICAgICAvKgogICAgICAgICAqIGltYWdlX2VuZCBpcyB0aGUgaW1hZ2VfZW5k
X21hcmtlciBkZWZpbmVkIGFib3ZlLiBJdCBpcyB0aGUgbGFzdCBsb2NhdGlvbgogICAgICAgICAq
IGluIHRoZSBleGVjdXRhYmxlLiBSaWdodCBhZnRlciB0aGUgZXhlY3V0YWJsZSB0aGUgYnVpbGQg
cHJvY2VzcyBhZGRzCgoK
------==--bound.846329.iva4-f774db2b5297.qloud-c.yandex.net
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

------==--bound.846329.iva4-f774db2b5297.qloud-c.yandex.net--
