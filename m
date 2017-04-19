Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward1h.cmail.yandex.net ([2a02:6b8:0:f35::11])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0vJx-0003uf-9F
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 19:31:24 +0000
From: =?utf-8?B?0J/QsNC90L7QsiDQkNC90LTRgNC10Lk=?= <rockford@yandex.ru>
In-Reply-To: <20170419103108.bmocd6whapavxs4q@pengutronix.de>
References: <CCE0355C-0078-435E-A307-9D64235CC014@moiji-mobile.com>
 <2CBFB5C4-AB2B-448E-9127-DEBE0B12E168@moiji-mobile.com>
 <20170419103108.bmocd6whapavxs4q@pengutronix.de>
MIME-Version: 1.0
Message-Id: <417131492630253@web37j.yandex.ru>
Date: Wed, 19 Apr 2017 22:30:53 +0300
Content-Type: multipart/mixed; boundary="----==--bound.41714.web37j.yandex.ru"
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
Subject: Re: Linking issue with ld.bfd 2.28.0.20170307
To: Sascha Hauer <s.hauer@pengutronix.de>, Holger Freyther <holger@moiji-mobile.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


------==--bound.41714.web37j.yandex.ru
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"

Hi!

U-boot has fix for this issue:
http://git.denx.de/?p=u-boot.git;a=commit;h=e391b1e64b0bd65709a28a4764afe4f32d408243

With attached patch I was able to build barebox with new ld. Tested on imx6 arch only.


19.04.2017, 13:31, "Sascha Hauer" <s.hauer@pengutronix.de>:
> Hi Holger,
>
> On Mon, Apr 17, 2017 at 07:35:19AM +0200, Holger Freyther wrote:
>>  > On 30. Mar 2017, at 20:49, Holger Freyther <holger@moiji-mobile.com> wrote:
>>  >
>>  > Hi,
>>
>>  Hi!
>>
>>  > I am rebuilding the bootloader with gcc6 and the above version
>>  > of binutils and it is failing to link with .bfd but is working
>>  > with .gold.
>>  >
>>  > Is this known? Is anyone else seeing this issue? And no I did
>>  > not try linking with -N and I have no idea what ld thinks is
>>  > the program headers here.
>>
>>  my steps to reproduce this with Yocto's gcc-6.3 and ld.bfd
>>  2.28.0.20170307 are the following. CROSS_COMPILE points into
>>  the sysroot of a build on poky master.
>>
>>  git clone --branch=hfreyther/v2017.03-rebase git://git.sysmocom.de/barebox
>>  cd barebox/
>>  wget -O .config "http://git.sysmocom.de/poky/meta-sysmocom-bsp/plain/recipes-bsp/barebox/barebox-sysmobts/defconfig?id=39afcd35ae40b8468868f1e942706dec11e03961"
>>  make ARCH=arm
>>
>>  .../arm-poky-linux-gnueabi-ld: .tmp_barebox1: Not enough room for program headers, try linking with -N
>>  .../arm-poky-linux-gnueabi-ld: final link failed: Bad value
>
> I'm afraid nobody currently uses gcc6 for barebox. I have no idea what's
> going wrong here, sorry. Does it work when you disable
> CONFIG_RELOCATABLE?
>
> Sascha
>
> --
> Pengutronix e.K. | |
> Industrial Linux Solutions | http://www.pengutronix.de/ |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 |
> Amtsgericht Hildesheim, HRA 2686 | Fax: +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- 
Андрей
------==--bound.41714.web37j.yandex.ru
Content-Disposition: attachment;
	filename="0001-Fix-linking-with-new-ld-based-on-u-boot.patch"
Content-Transfer-Encoding: base64
Content-Type: text/x-diff;
	name="0001-Fix-linking-with-new-ld-based-on-u-boot.patch"

RnJvbSBmYzZkZDY5ZDMzZTNlMzI4NWQ3ZWZlMTY0N2FmOGYxYWUzMTk0ODQ2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBbmRyZXkgUGFub3YgPHJvY2tmb3JkQHlhbmRleC5ydT4KRGF0
ZTogV2VkLCAxOSBBcHIgMjAxNyAyMjoyNToxNyArMDMwMApTdWJqZWN0OiBbUEFUQ0hdIEZpeCBs
aW5raW5nIHdpdGggbmV3IGxkLCBiYXNlZCBvbiB1LWJvb3QKCi0tLQogTWFrZWZpbGUgICAgICAg
ICAgICAgICB8IDMgKysrCiBpbWFnZXMvTWFrZWZpbGUgICAgICAgIHwgMyArKysKIHNjcmlwdHMv
S2J1aWxkLmluY2x1ZGUgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKaW5kZXggYWZh
NGJmODAyLi5jNzhmNjZmNzMgMTAwNjQ0Ci0tLSBhL01ha2VmaWxlCisrKyBiL01ha2VmaWxlCkBA
IC0zMDYsNiArMzA2LDkgQEAgQUZMQUdTICAgICAgICAgIDo9IC1EX19BU1NFTUJMWV9fCiAKIExE
RkxBR1NfYmFyZWJveAk6PSAtTWFwIGJhcmVib3gubWFwCiAKKyMgQXZvaWQgJ05vdCBlbm91Z2gg
cm9vbSBmb3IgcHJvZ3JhbSBoZWFkZXJzJyBlcnJvciBvbiBiaW51dGlscyAyLjI4IG9ud2FyZHMu
CitMREZMQUdTX2JhcmVib3ggKz0gJChjYWxsIGxkLW9wdGlvbiwgLS1uby1keW5hbWljLWxpbmtl
cikKKwogIyBSZWFkIEtFUk5FTFJFTEVBU0UgZnJvbSBpbmNsdWRlL2NvbmZpZy9rZXJuZWwucmVs
ZWFzZSAoaWYgaXQgZXhpc3RzKQogS0VSTkVMUkVMRUFTRSA9ICQoc2hlbGwgY2F0IGluY2x1ZGUv
Y29uZmlnL2tlcm5lbC5yZWxlYXNlIDI+IC9kZXYvbnVsbCkKIEtFUk5FTFZFUlNJT04gPSAkKFZF
UlNJT04pLiQoUEFUQ0hMRVZFTCkuJChTVUJMRVZFTCkkKEVYVFJBVkVSU0lPTikKZGlmZiAtLWdp
dCBhL2ltYWdlcy9NYWtlZmlsZSBiL2ltYWdlcy9NYWtlZmlsZQppbmRleCBhZGY5NTBhYTkuLjhj
NWRhYzRiZiAxMDA2NDQKLS0tIGEvaW1hZ2VzL01ha2VmaWxlCisrKyBiL2ltYWdlcy9NYWtlZmls
ZQpAQCAtNTMsNiArNTMsOSBAQCBleHRyYS15ICs9ICQocGJsLWxkcykKICQocGJsLWxkcyk6ICQo
b2JqKS8uLi9hcmNoLyQoQVJDSCkvbGliL3BibC5sZHMuUyBGT1JDRQogCSQoY2FsbCBpZl9jaGFu
Z2VkX2RlcCxjcHBfbGRzX1MpCiAKKyMgQXZvaWQgJ05vdCBlbm91Z2ggcm9vbSBmb3IgcHJvZ3Jh
bSBoZWFkZXJzJyBlcnJvciBvbiBiaW51dGlscyAyLjI4IG9ud2FyZHMuCitMREZMQUdTICs9ICQo
Y2FsbCBsZC1vcHRpb24sIC0tbm8tZHluYW1pYy1saW5rZXIpCisKIHF1aWV0X2NtZF9lbGZfXyA/
PSBMRCAgICAgICRACiAgICAgICBjbWRfZWxmX18gPz0gJChMRCkgJChMREZMQUdTKSAtLWdjLXNl
Y3Rpb25zIC1waWUJCQlcCiAJCS1lICQoMikgLU1hcCAkQC5tYXAgJChMREZMQUdTXyQoQEYpKSAt
byAkQAkJXApkaWZmIC0tZ2l0IGEvc2NyaXB0cy9LYnVpbGQuaW5jbHVkZSBiL3NjcmlwdHMvS2J1
aWxkLmluY2x1ZGUKaW5kZXggYzdmYWY2N2EyLi4zMTBkY2RjOTQgMTAwNjQ0Ci0tLSBhL3Njcmlw
dHMvS2J1aWxkLmluY2x1ZGUKKysrIGIvc2NyaXB0cy9LYnVpbGQuaW5jbHVkZQpAQCAtMTQ4LDcg
KzE0OCw3IEBAIGNjLWxkb3B0aW9uID0gJChjYWxsIHRyeS1ydW4sXAogIyBsZC1vcHRpb24KICMg
VXNhZ2U6IExERkxBR1MgKz0gJChjYWxsIGxkLW9wdGlvbiwgLVgpCiBsZC1vcHRpb24gPSAkKGNh
bGwgdHJ5LXJ1bixcCi0JJChDQykgL2Rldi9udWxsIC1jIC1vICIkJFRNUE8iIDsgJChMRCkgJCgx
KSAiJCRUTVBPIiAtbyAiJCRUTVAiLCQoMSksJCgyKSkKKwkkKENDKSAteCBjIC9kZXYvbnVsbCAt
YyAtbyAiJCRUTVBPIiA7ICQoTEQpICQoMSkgIiQkVE1QTyIgLW8gIiQkVE1QIiwkKDEpLCQoMikp
CiAKICMgYXItb3B0aW9uCiAjIFVzYWdlOiBLQlVJTERfQVJGTEFHUyA6PSAkKGNhbGwgYXItb3B0
aW9uLEQpCi0tIAoyLjExLjAKCg==
------==--bound.41714.web37j.yandex.ru
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

------==--bound.41714.web37j.yandex.ru--
