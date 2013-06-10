Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Um19J-000186-Gi
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 12:24:38 +0000
Received: from [192.168.10.59] (p4FC18F49.dip0.t-ipconnect.de [79.193.143.73])
 by knowtrek.com (Postfix) with ESMTPSA id D01882EF835F
 for <barebox@lists.infradead.org>; Mon, 10 Jun 2013 14:24:12 +0200 (CEST)
Message-ID: <51B5C56C.4050801@knowtrek.com>
Date: Mon, 10 Jun 2013 14:24:12 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
References: <51B0B2D6.3030407@knowtrek.com>
 <20130606162120.GA32299@pengutronix.de>
In-Reply-To: <20130606162120.GA32299@pengutronix.de>
Content-Type: multipart/mixed; boundary="------------020808080500030105010601"
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
Subject: Re: how to flash barebox and set root variable?
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------020808080500030105010601
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello Sascha,

> What to do next depends on the environment you have. Please send
> the output of 'ls -l /env'.


that would be:

drwxrwxrwx          0 .
drwxrwxrwx          0 ..
- -rwxrwxrwx       1230 config
drwxrwxrwx          0 bin

contents of /env/bin is:

- -rwxrwxrwx        817 _update_help
- -rwxrwxrwx        447 update_nfs
- -rwxrwxrwx       1362 update
- -rwxrwxrwx        285 mv
- -rwxrwxrwx       3445 boot
- -rwxrwxrwx        590 init
- -rwxrwxrwx         21 hush_hack
- -rwxrwxrwx        571 _boot_help
- -rwxrwxrwx        702 _update

and ls -l /dev prints:

cr-------- 4294967295 zero
crw-------  536870912 ram0
crw-------      11108 defaultenv
crw------- 4294967295 mem
crw-------         64 phy0
crw------- 3616538624 disk0
crw-------    4193792 disk0.0
crw-------   54525952 disk0.1
crw-------    8388608 nor0
crw-------     917504 self0
crw-------     131072 env0
crw-------     917504 nor0.barebox
crw-------     131072 nor0.bareboxenv
crw-------    7340032 nor0.kernel

well, have tried to make an barebox.bin start disk with the cat
barebox.bin > /dev/sdX, but not sure how to proceed to run from sd-card.

On a different try, I copied barebox.bin on a fat12 sd partition and
tried to update on the mounted partion:

update -t barebox -d nor -f barebox.bin

but the syntax is:

type update -t barebox -d <nor|nand> [-m tftp|xmodem|nfs] [-f
imagename] to update barebox into flash

"-m" does not give my disk as source, so I guess I have to get tftp to
work..

> I haven't downloaded the CD images they provide. Do you know
> whether there are barebox sources provided on the CDs?

On CD there is basically buildroot and the config files for barebox I
have attached to this mail.


Just to recall: my problem is that i do not know how to provide
"root=" parameter to my barebox environemnt. I load the zImage by
mounting partition by hand and running "bootm".

Thanks for help, Greetings,

Adam







-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlG1xWwACgkQefEEI87R1Df8KwCgnaq0Vx4oEY8dQt4+LWDYhiF9
4rAAoMrMmDFZ1LivOBn2E2byd2MENiHB
=vSZi
-----END PGP SIGNATURE-----

--------------020808080500030105010601
Content-Type: text/plain;
 name="barebox.mk"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="barebox.mk"

IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIwojCiMgQmFyZWJveAojCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKCkJBUkVCT1hfVkVSU0lPTiAgICA9ICQo
Y2FsbCBxc3RyaXAsJChCUjJfVEFSR0VUX0JBUkVCT1hfVkVSU0lPTikpCgppZmVxICgkKEJB
UkVCT1hfVkVSU0lPTiksY3VzdG9tKQojIEhhbmRsZSBjdXN0b20gQmFyZWJveCB0YXJiYWxs
cyBhcyBzcGVjaWZpZWQgYnkgdGhlIGNvbmZpZ3VyYXRpb24KQkFSRUJPWF9UQVJCQUxMID0g
JChjYWxsIHFzdHJpcCwkKEJSMl9UQVJHRVRfQkFSRUJPWF9DVVNUT01fVEFSQkFMTF9MT0NB
VElPTikpCkJBUkVCT1hfU0lURSAgICA9ICQoZGlyICQoQkFSRUJPWF9UQVJCQUxMKSkKQkFS
RUJPWF9TT1VSQ0UgID0gJChub3RkaXIgJChCQVJFQk9YX1RBUkJBTEwpKQplbHNlIGlmZXEg
KCQoQlIyX1RBUkdFVF9CQVJFQk9YX0NVU1RPTV9HSVQpLHkpCkJBUkVCT1hfU0lURSAgICAg
ICAgPSAkKGNhbGwgcXN0cmlwLCQoQlIyX1RBUkdFVF9CQVJFQk9YX0NVU1RPTV9HSVRfUkVQ
T19VUkwpKQpCQVJFQk9YX1NJVEVfTUVUSE9EID0gZ2l0CmVsc2UKIyBIYW5kbGUgc3RhYmxl
IG9mZmljaWFsIEJhcmVib3ggdmVyc2lvbnMKQkFSRUJPWF9TT1VSQ0UgPSBiYXJlYm94LSQo
QkFSRUJPWF9WRVJTSU9OKS50YXIuYnoyCkJBUkVCT1hfU0lURSA9IGh0dHA6Ly93d3cuYmFy
ZWJveC5vcmcvZG93bmxvYWQvCmVuZGlmCgpCQVJFQk9YX0xJQ0VOU0UgPSBHUEx2MgpCQVJF
Qk9YX0xJQ0VOU0VfRklMRVMgPSBDT1BZSU5HCgppZm5lcSAoJChjYWxsIHFzdHJpcCwkKEJS
Ml9UQVJHRVRfQkFSRUJPWF9DVVNUT01fUEFUQ0hfRElSKSksKQpkZWZpbmUgQkFSRUJPWF9B
UFBMWV9DVVNUT01fUEFUQ0hFUwoJc3VwcG9ydC9zY3JpcHRzL2FwcGx5LXBhdGNoZXMuc2gg
JChARCkgJChCUjJfVEFSR0VUX0JBUkVCT1hfQ1VTVE9NX1BBVENIX0RJUikgXAoJCWJhcmVi
b3gtJChCQVJFQk9YX1ZFUlNJT04pLVwqLnBhdGNoCmVuZGVmCgpCQVJFQk9YX1BPU1RfUEFU
Q0hfSE9PS1MgKz0gQkFSRUJPWF9BUFBMWV9DVVNUT01fUEFUQ0hFUwplbmRpZgoKQkFSRUJP
WF9JTlNUQUxMX0lNQUdFUyA9IFlFUwppZm5lcSAoJChCUjJfVEFSR0VUX0JBUkVCT1hfQkFS
RUJPWEVOVikseSkKQkFSRUJPWF9JTlNUQUxMX1RBUkdFVCA9IE5PCmVuZGlmCgpCQVJFQk9Y
X0JPQVJEX0RFRkNPTkZJRyA9ICQoY2FsbCBxc3RyaXAsJChCUjJfVEFSR0VUX0JBUkVCT1hf
Qk9BUkRfREVGQ09ORklHKSkKCmlmZXEgKCQoS0VSTkVMX0FSQ0gpLGkzODYpCkJBUkVCT1hf
QVJDSD14ODYKZWxzZSBpZmVxICgkKEtFUk5FTF9BUkNIKSxwb3dlcnBjKQpCQVJFQk9YX0FS
Q0g9cHBjCmVsc2UKQkFSRUJPWF9BUkNIPSQoS0VSTkVMX0FSQ0gpCmVuZGlmCgpCQVJFQk9Y
X01BS0VfRkxBR1MgPSBBUkNIPSQoQkFSRUJPWF9BUkNIKSBDUk9TU19DT01QSUxFPSIkKEND
QUNIRSkgJChUQVJHRVRfQ1JPU1MpIgoKZGVmaW5lIEJBUkVCT1hfQ09ORklHVVJFX0NNRFMK
CSQoTUFLRSkgJChCQVJFQk9YX01BS0VfRkxBR1MpIC1DICQoQEQpICQoQkFSRUJPWF9CT0FS
RF9ERUZDT05GSUcpX2RlZmNvbmZpZwplbmRlZgoKaWZlcSAoJChCUjJfVEFSR0VUX0JBUkVC
T1hfQkFSRUJPWEVOVikseSkKZGVmaW5lIEJBUkVCT1hfQlVJTERfQkFSRUJPWEVOVl9DTURT
CgkkKFRBUkdFVF9DQykgJChUQVJHRVRfQ0ZMQUdTKSAkKFRBUkdFVF9MREZMQUdTKSAtbyAk
KEBEKS9iYXJlYm94ZW52IFwKCQkkKEBEKS9zY3JpcHRzL2JhcmVib3hlbnYuYwplbmRlZgpl
bmRpZgoKZGVmaW5lIEJBUkVCT1hfQlVJTERfQ01EUwoJJChCQVJFQk9YX0JVSUxEX0JBUkVC
T1hFTlZfQ01EUykKCSQoTUFLRSkgJChCQVJFQk9YX01BS0VfRkxBR1MpIC1DICQoQEQpCmVu
ZGVmCgpkZWZpbmUgQkFSRUJPWF9JTlNUQUxMX0lNQUdFU19DTURTCgljcCAkKEBEKS9iYXJl
Ym94LmJpbiAkKEJJTkFSSUVTX0RJUikKZW5kZWYKCmlmZXEgKCQoQlIyX1RBUkdFVF9CQVJF
Qk9YX0JBUkVCT1hFTlYpLHkpCmRlZmluZSBCQVJFQk9YX0lOU1RBTExfVEFSR0VUX0NNRFMK
CWNwICQoQEQpL2JhcmVib3hlbnYgJChUQVJHRVRfRElSKS91c3IvYmluCmVuZGVmCmVuZGlm
CgokKGV2YWwgJChnZW5lcmljLXBhY2thZ2UpKQoKaWZlcSAoJChCUjJfVEFSR0VUX0JBUkVC
T1gpLHkpCiMgd2UgTkVFRCBhIGJvYXJkIGRlZmNvbmZpZyBmaWxlIHVubGVzcyB3ZSdyZSBh
dCBtYWtlIHNvdXJjZQppZmVxICgkKGZpbHRlciBzb3VyY2UsJChNQUtFQ01ER09BTFMpKSwp
CmlmZXEgKCQoQkFSRUJPWF9CT0FSRF9ERUZDT05GSUcpLCkKJChlcnJvciBObyBCYXJlYm94
IGRlZmNvbmZpZyBmaWxlLiBDaGVjayB5b3VyIEJSMl9UQVJHRVRfQkFSRUJPWF9CT0FSRF9E
RUZDT05GSUcgc2V0dGluZykKZW5kaWYKZW5kaWYKCmJhcmVib3gtbWVudWNvbmZpZyBiYXJl
Ym94LXhjb25maWcgYmFyZWJveC1nY29uZmlnIGJhcmVib3gtbmNvbmZpZzogYmFyZWJveC1j
b25maWd1cmUKCSQoTUFLRSkgJChCQVJFQk9YX01BS0VfRkxBR1MpIC1DICQoQkFSRUJPWF9E
SVIpIFwKCQkkKHN1YnN0IGJhcmVib3gtLCwkQCkKCXJtIC1mICQoQkFSRUJPWF9ESVIpLy5z
dGFtcF97YnVpbHQsdGFyZ2V0X2luc3RhbGxlZCxpbWFnZXNfaW5zdGFsbGVkfQoKYmFyZWJv
eC1zYXZlZGVmY29uZmlnOiBiYXJlYm94LWNvbmZpZ3VyZQoJJChNQUtFKSAkKEJBUkVCT1hf
TUFLRV9GTEFHUykgLUMgJChCQVJFQk9YX0RJUikgXAoJCSQoc3Vic3QgYmFyZWJveC0sLCRA
KQoKZW5kaWYK
--------------020808080500030105010601
Content-Type: text/plain;
 name="Config.in"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="Config.in"

Y29uZmlnIEJSMl9UQVJHRVRfQkFSRUJPWAoJYm9vbCAiQmFyZWJveCIKCWhlbHAKCSAgVGhl
IEJhcmVib3ggYm9vdGxvYWRlciwgZm9ybWVybHkga25vd24gYXMgVS1Cb290IHYyLgoKCSAg
aHR0cDovL3d3dy5iYXJlYm94Lm9yZwoKaWYgQlIyX1RBUkdFVF9CQVJFQk9YCmNob2ljZQoJ
cHJvbXB0ICJ2ZXJzaW9uIgoJZGVmYXVsdCBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNwoJ
aGVscAoJICBTZWxlY3QgdGhlIHNwZWNpZmljIEJhcmVib3ggdmVyc2lvbiB5b3Ugd2FudCB0
byB1c2UKCmNvbmZpZyBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNAoJYm9vbCAiMjAxMi4w
NCIKCmNvbmZpZyBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNQoJYm9vbCAiMjAxMi4wNSIK
CmNvbmZpZyBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNgoJYm9vbCAiMjAxMi4wNiIKCmNv
bmZpZyBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNwoJYm9vbCAiMjAxMi4wNyIKCmNvbmZp
ZyBCUjJfVEFSR0VUX0JBUkVCT1hfQ1VTVE9NX1RBUkJBTEwKCWJvb2wgIkN1c3RvbSB0YXJi
YWxsIgoKY29uZmlnIEJSMl9UQVJHRVRfQkFSRUJPWF9DVVNUT01fR0lUCglib29sICJDdXN0
b20gR2l0IHJlcG9zaXRvcnkiCgplbmRjaG9pY2UKCmlmIEJSMl9UQVJHRVRfQkFSRUJPWF9D
VVNUT01fVEFSQkFMTAoKY29uZmlnIEJSMl9UQVJHRVRfQkFSRUJPWF9DVVNUT01fVEFSQkFM
TF9MT0NBVElPTgoJc3RyaW5nICJVUkwgb2YgY3VzdG9tIEJhcmVib3ggdGFyYmFsbCIKCmVu
ZGlmCgpjb25maWcgQlIyX1RBUkdFVF9CQVJFQk9YX1ZFUlNJT04KCXN0cmluZwoJZGVmYXVs
dCAiMjAxMi4wNC4wIglpZiBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNAoJZGVmYXVsdCAi
MjAxMi4wNS4wIglpZiBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNQoJZGVmYXVsdCAiMjAx
Mi4wNi4wIglpZiBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNgoJZGVmYXVsdCAiMjAxMi4w
Ny4wIglpZiBCUjJfVEFSR0VUX0JBUkVCT1hfMjAxMl8wNwoJZGVmYXVsdCAiY3VzdG9tIglp
ZiBCUjJfVEFSR0VUX0JBUkVCT1hfQ1VTVE9NX1RBUkJBTEwKCWRlZmF1bHQgJEJSMl9UQVJH
RVRfQkFSRUJPWF9DVVNUT01fR0lUX1ZFUlNJT04gaWYgQlIyX1RBUkdFVF9CQVJFQk9YX0NV
U1RPTV9HSVQKCmNvbmZpZyBCUjJfVEFSR0VUX0JBUkVCT1hfQ1VTVE9NX1BBVENIX0RJUgoJ
c3RyaW5nICJjdXN0b20gcGF0Y2ggZGlyIgoJaGVscAoJICBJZiB5b3VyIGJvYXJkIHJlcXVp
cmVzIGN1c3RvbSBwYXRjaGVzLCBhZGQgdGhlIHBhdGggdG8gdGhlCgkgIGRpcmVjdG9yeSBj
b250YWluaW5nIHRoZSBwYXRjaGVzIGhlcmUuIFRoZSBwYXRjaGVzIG11c3QgYmUKCSAgbmFt
ZWQgYmFyZWJveC08dmVyc2lvbj4tPHNvbWV0aGluZz4ucGF0Y2guCgoJICBNb3N0IHVzZXJz
IG1heSBsZWF2ZSB0aGlzIGVtcHR5CgppZiBCUjJfVEFSR0VUX0JBUkVCT1hfQ1VTVE9NX0dJ
VAoKY29uZmlnIEJSMl9UQVJHRVRfQkFSRUJPWF9DVVNUT01fR0lUX1JFUE9fVVJMCglzdHJp
bmcgIlVSTCBvZiBjdXN0b20gR2l0IHJlcG9zaXRvcnkiCgpjb25maWcgQlIyX1RBUkdFVF9C
QVJFQk9YX0NVU1RPTV9HSVRfVkVSU0lPTgoJc3RyaW5nICJDdXN0b20gR2l0IHZlcnNpb24i
CgplbmRpZgoKY29uZmlnIEJSMl9UQVJHRVRfQkFSRUJPWF9CT0FSRF9ERUZDT05GSUcKCXN0
cmluZyAiYm9hcmQgZGVmY29uZmlnIgoJaGVscAoJICBOYW1lIG9mIHRoZSBib2FyZCBmb3Ig
d2hpY2ggQmFyZWJveCBzaG91bGQgYmUgYnVpbHQsIHdpdGhvdXQKCSAgdGhlIF9kZWZjb25m
aWcgc3VmZml4LgoKY29uZmlnIEJSMl9UQVJHRVRfQkFSRUJPWF9CQVJFQk9YRU5WCglib29s
ICJiYXJlYm94ZW52IHRvb2wgaW4gdGFyZ2V0IgoJaGVscAoJICBJbnN0YWxsIGJhcmVib3hl
bnYgdG9vbCBpbiB0YXJnZXQuCgplbmRpZgo=
--------------020808080500030105010601
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------020808080500030105010601--
