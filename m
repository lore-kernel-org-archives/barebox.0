Delivery-date: Tue, 16 Jun 2026 10:15:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZOxN-006RFM-36
	for lore@lore.pengutronix.de;
	Tue, 16 Jun 2026 10:15:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZOxM-0002SH-Em
	for lore@pengutronix.de; Tue, 16 Jun 2026 10:15:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q6Xbs29JP8cFnEbgQqa+4G3qrGGAToK9wLa9J31+URM=; b=alMFd+flGuu4MMOL4KHUBjoLsw
	tZzFpYcTiLm7cx64tYSRDb9RYoS2FO47VNUhjQ2fAOF8O1I1RTB7AuMAW6H7qDXp18T+jlkg+VFtv
	ung2A9y6Ap41D4v8C7lNjohb0qa84znTEEmFHgdhXTpY1kUaX9ACcyiAKfbhFJ+LRPHZ6+93H0yZR
	cpvoYNsB+AwvVcGzeZMrnx3RnHfbOY4XZ3cOa9MLJQAP3RSQ2xmUdDfATjM+Hf0E5detmUt5n0wNQ
	BMUZXfruDWDki/ZH9ydZAWNPnkyPWqOmrfAGnAjq+SYqmk6wTuUn41kXCfOaHhm9Y6KER5nwJFE7p
	o3zAjalg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZOwg-0000000FQQq-0tKO;
	Tue, 16 Jun 2026 08:14:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZOwc-0000000FQQD-0o8g
	for barebox@lists.infradead.org;
	Tue, 16 Jun 2026 08:14:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wZOwY-00026B-SG; Tue, 16 Jun 2026 10:14:46 +0200
Message-ID: <ad9006dd-08c6-4c9f-be0c-a97a673e2117@pengutronix.de>
Date: Tue, 16 Jun 2026 10:14:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20260613195626.1650288-1-johannes.schneider@leica-geosystems.com>
 <b332b48b-dee1-4e12-8186-f76bc60bf4c3@pengutronix.de>
 <AM0PR06MB41485EC4B2403D9B22037A6FBCE52@AM0PR06MB4148.eurprd06.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <AM0PR06MB41485EC4B2403D9B22037A6FBCE52@AM0PR06MB4148.eurprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_011450_544545_A9FF1CC5 
X-CRM114-Status: GOOD (  33.41  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] firmware: choose PBL fw-external verify algorithm via
 Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Johannes,

On 6/16/26 7:46 AM, SCHNEIDER Johannes wrote:
>> On 6/13/26 9:56 PM, Johannes Schneider wrote:
>>
>>> it
>>> only re-checks the BootROM->DRAM copy against a value baked into the
>>> PBL itself, not against an external trust anchor. A 32-bit CRC over
>>> the same window catches the realistic failure mode (a corrupted copy
>>> into DRAM) at ~200x lower wall-clock cost.
>>
>> Give recent commit f2ae1a4a85d0 ("ARM: rockchip: atf: enable MMU in
>> PBL") and its follow-up a look.
>>
> 
> thanks for the hint, i'm "toying" with the code now, and am wondering: instead
> of enabling the MMU to speed up the software sha256, would you have any concerns
> if i would enable and use the hardware sha256 that lives inside the imx8?
> 
> from my first couple of measurements i get:
> | Variant                  |   bl32-verify | Delta vs prev | Cumulative drop |
> | Pre-MMU-on (generic C, uncached)    |    2190 ms |        -- |        -- |
> | Post-MMU-on (generic C, cached)     |     451 ms |   -1739 ms |   -1739 ms |
> | Crypto-ext, per 64bytes block       |     192 ms |    -259 ms |   -1998 ms |
> | Crypto-ext, batched                 |   **5 ms** |    -187 ms |   -2185 ms |
> 
> i could send either the "enable mmu" or the "enable hardware hashing" a better follow up to this patch - opinions/preferences?

Por qué no los dos? :-)

>> I'd suggest you do the same: Keep the hash as-is, but set up MMU as soon
>> as you have the memory size.
>>
>> You can also play around with mimicking compression of firmware blobs
>> like we have on Rockchip. Depending on CPU vs I/O speed, this can also
>> reduce your startup time.
> 
> compressing the optee tee.bin (~720KiB) and having PBL uncompress it again would
> (probably) work, i have some code that does this - but for some reason the way
> we build and sign the whole barebox binary now doesn't agree with the imx8m*
> bootrom, and it drops me back into serial-dl mode = it refuses the image
> completly.

That's strange. You can continue booting via serial download mode and
run the bootrom command. Maybe there's some useful info there on why the
boot failed.

> Any hints for what i need to look out for when adding such feature to the PBL?

I haven't implemented it myself yet, but saw Sascha's patches for
Rockchip. I'd suggest you to follow that.

Cheers,
Ahmad

> 
> 
> gruß
> Johannes
> 
> 
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Make the verify algorithm a Kconfig choice:
>>>
>>>   PBL_FIRMWARE_EXT_VERIFY_NONE    no verify
>>>   PBL_FIRMWARE_EXT_VERIFY_CRC32   4-byte CRC, cheap corruption check
>>>   PBL_FIRMWARE_EXT_VERIFY_SHA256  current behaviour, default
>>>
>>> firmware/Makefile selects an algorithm and passes it to gen-fw-s,
>>> which emits nothing for NONE, a 4-byte .long for CRC32, or 32 bytes
>>> for SHA-256 in the per-blob .rodata.<fwstr>.sha section. The macro
>>> in include/firmware.h declares the verify symbols only when actually
>>> used (offset != 0, i.e. fw-external blobs), so NONE is a true no-op
>>> and in-tree firmware never grew a section dependency.
>>> firmware_ext_verify() dispatches via IS_ENABLED() at compile time.
>>>
>>> The verify-section symbol names (_fw_*_sha_*) are kept as-is rather
>>> than renamed, since firmware_next_image_verify() also references
>>> them for the FIRMWARE_VERIFY_NEXT_IMAGE path; under CRC32 the name
>>> no longer describes the contents, but renaming would expand the
>>> patch scope unnecessarily.
>>>
>>> Default stays at SHA-256 so existing defconfigs keep their current
>>> semantics.
>>>
>>> Assisted-by: Claude:claude-opus-4-7
>>> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
>>> ---
>>>  firmware/Kconfig   | 33 +++++++++++++++++++++++++++
>>>  firmware/Makefile  | 15 ++++++++++--
>>>  include/firmware.h | 41 +++++++++++++++++++++++----------
>>>  include/pbl.h      |  2 ++
>>>  pbl/decomp.c       | 35 ++++++++++++++++++++++++++++
>>>  scripts/gen-fw-s   | 57 +++++++++++++++++++++++++++++++++-------------
>>>  6 files changed, 153 insertions(+), 30 deletions(-)
>>>
>>> diff --git a/firmware/Kconfig b/firmware/Kconfig
>>> index b9b4556dbd..f745819a67 100644
>>> --- a/firmware/Kconfig
>>> +++ b/firmware/Kconfig
>>> @@ -151,4 +151,37 @@ config FIRMWARE_VERIFY_NEXT_IMAGE
>>>         verified images. The function to check the next stage image hash is
>>>         firmware_next_image_verify(), make sure your SoC code uses it.
>>>
>>> +choice
>>> +     prompt "PBL fw-external blob verification"
>>> +     default PBL_FIRMWARE_EXT_VERIFY_SHA256
>>> +     help
>>> +       Algorithm used by the PBL to verify an fw-external blob against a
>>> +       value embedded at build time, before handoff to TF-A. Runs with
>>> +       the MMU off and DRAM reads uncached, so cost scales sharply with
>>> +       blob size and algorithm. This checks integrity vs the build-time
>>> +       value; it is not authentication against an external trust anchor.
>>> +
>>> +config PBL_FIRMWARE_EXT_VERIFY_NONE
>>> +     bool "none"
>>> +     help
>>> +       Skip the verify. Appropriate when the boot chain authenticates the
>>> +       blob upstream of the PBL (HAB, AHAB, signed FIT, ...) -- the
>>> +       in-PBL check is then redundant.
>>> +
>>> +config PBL_FIRMWARE_EXT_VERIFY_CRC32
>>> +     bool "CRC32"
>>> +     select CRC32
>>> +     help
>>> +       4-byte CRC32 (zlib polynomial). Catches accidental corruption
>>> +       of the BootROM->DRAM copy; not cryptographic.
>>> +
>>> +config PBL_FIRMWARE_EXT_VERIFY_SHA256
>>> +     bool "SHA-256"
>>> +     help
>>> +       Cryptographic hash, software-computed with MMU off. Strongest
>>> +       option but by far the slowest -- prefer NONE or CRC32 when the
>>> +       blob is already authenticated upstream of the PBL.
>>> +
>>> +endchoice
>>> +
>>>  endmenu
>>> diff --git a/firmware/Makefile b/firmware/Makefile
>>> index 7e433a1824..1590bed9f1 100644
>>> --- a/firmware/Makefile
>>> +++ b/firmware/Makefile
>>> @@ -61,8 +61,19 @@ pbl-fwext-y := $(addsuffix .extgen.o, $(fw-external-y))
>>>
>>>  FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
>>>
>>> -filechk_fwbin = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .rodata '' $(fwobjdir)
>>> -filechk_fwbin_ext = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .pblext a $(fwobjdir)
>>> +# Verify algorithm passed to gen-fw-s for fw-external blobs. Drives the
>>> +# verify metadata section emitted into .extgen.S and matched by
>>> +# firmware_ext_verify() in include/firmware.h.
>>> +ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_NONE
>>> +fw_verify_algo := none
>>> +else ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
>>> +fw_verify_algo := crc32
>>> +else
>>> +fw_verify_algo := sha256
>>> +endif
>>> +
>>> +filechk_fwbin = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .rodata '' $(fwobjdir) sha256
>>> +filechk_fwbin_ext = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .pblext a $(fwobjdir) $(fw_verify_algo)
>>>
>>>  $(obj)/%.gen.S: FORCE
>>>       $(call filechk,fwbin)
>>> diff --git a/include/firmware.h b/include/firmware.h
>>> index 6511d56b2e..72a47f24e3 100644
>>> --- a/include/firmware.h
>>> +++ b/include/firmware.h
>>> @@ -80,13 +80,21 @@ static inline void release_firmware(const struct firmware *fw)
>>>
>>>  void firmwaremgr_list_handlers(void);
>>>
>>> -static inline void firmware_ext_verify(const void *data_start, size_t data_size,
>>> -                                    const void *hash_start, size_t hash_size)
>>> +static inline void firmware_ext_verify(const void *data, size_t data_size,
>>> +                                    const void *verify, size_t verify_size)
>>>  {
>>> -     if (pbl_barebox_verify(data_start, data_size,
>>> -                            hash_start, hash_size) != 0) {
>>> +     int ret;
>>> +
>>> +     if (IS_ENABLED(CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32))
>>> +             ret = pbl_barebox_verify_crc32(data, data_size,
>>> +                                            verify, verify_size);
>>> +     else
>>> +             ret = pbl_barebox_verify(data, data_size,
>>> +                                      verify, verify_size);
>>> +
>>> +     if (ret != 0) {
>>>               putc_ll('!');
>>> -             panic("hash mismatch, refusing to decompress");
>>> +             panic("firmware verify mismatch, refusing to decompress");
>>>       }
>>>  }
>>>
>>> @@ -96,22 +104,31 @@ struct fwobj {
>>>       void *data;
>>>  };
>>>
>>> +#if defined(CONFIG_PBL_FIRMWARE_EXT_VERIFY_NONE)
>>> +# define __fw_ext_verify(name, fwobj)        do { } while (0)
>>> +#else
>>> +# define __fw_ext_verify(name, fwobj)                                        \
>>> +     do {                                                            \
>>> +             extern char _fw_##name##_sha_start[];           \
>>> +             extern char _fw_##name##_sha_end[];                     \
>>> +             firmware_ext_verify(                                    \
>>> +                     (fwobj)->data, (fwobj)->size,                   \
>>> +                     _fw_##name##_sha_start,                 \
>>> +                     _fw_##name##_sha_end -                  \
>>> +                     _fw_##name##_sha_start);                        \
>>> +     } while (0)
>>> +#endif
>>> +
>>>  #define __get_builtin_firmware(name, offset, fwobj)                  \
>>>       do {                                                            \
>>>               extern char _fw_##name##_start[];                       \
>>>               extern char _fw_##name##_end[];                         \
>>> -             extern char _fw_##name##_sha_start[];                   \
>>> -             extern char _fw_##name##_sha_end[];                     \
>>>               (fwobj)->data = _fw_##name##_start;                     \
>>>               (fwobj)->size = _fw_##name##_end - _fw_##name##_start;  \
>>>               if (!(offset))                                          \
>>>                       break;                                          \
>>>               (fwobj)->data += (offset);                              \
>>> -             firmware_ext_verify(                                    \
>>> -                     (fwobj)->data, (fwobj)->size,                   \
>>> -                     _fw_##name##_sha_start,                         \
>>> -                     _fw_##name##_sha_end - _fw_##name##_sha_start   \
>>> -             );                                                      \
>>> +             __fw_ext_verify(name, fwobj);                           \
>>>       } while (0)
>>>
>>>
>>> diff --git a/include/pbl.h b/include/pbl.h
>>> index fe4367825c..57ca8b4eb3 100644
>>> --- a/include/pbl.h
>>> +++ b/include/pbl.h
>>> @@ -29,6 +29,8 @@ fdt_device_get_match_data(const void *fdt, const char *nodepath,
>>>
>>>  int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>>>                      const void *hash, unsigned int hash_len);
>>> +int pbl_barebox_verify_crc32(const void *data_start, unsigned int len,
>>> +                          const void *crc, unsigned int crc_len);
>>>  int pbl_load_fdt(const void *fdt, void *dest, int destsize);
>>>
>>>  #define PBL_MALLOC_SIZE SZ_128K
>>> diff --git a/pbl/decomp.c b/pbl/decomp.c
>>> index 1539a6b67e..ace121eac6 100644
>>> --- a/pbl/decomp.c
>>> +++ b/pbl/decomp.c
>>> @@ -13,6 +13,10 @@
>>>  #include <asm/sections.h>
>>>  #include <pbl.h>
>>>  #include <debug_ll.h>
>>> +#ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
>>> +#include <crc.h>
>>> +#include <asm/unaligned.h>
>>> +#endif
>>>
>>>  #define STATIC static
>>>
>>> @@ -90,6 +94,37 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>>>       return memcmp(hash, computed_hash, SHA256_DIGEST_SIZE);
>>>  }
>>>
>>> +#ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
>>> +int pbl_barebox_verify_crc32(const void *data_start, unsigned int len,
>>> +                          const void *crc, unsigned int crc_len)
>>> +{
>>> +     uint32_t expected, computed;
>>> +
>>> +     if (crc_len != sizeof(uint32_t))
>>> +             return -1;
>>> +
>>> +     /* Stored little-endian by .long in the .rodata.*.sha section. */
>>> +     expected = get_unaligned_le32(crc);
>>> +     computed = crc32(0, data_start, len);
>>> +
>>> +     if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>>> +             puts_ll("CRC ");
>>> +             puthexc_ll((computed >> 24) & 0xff);
>>> +             puthexc_ll((computed >> 16) & 0xff);
>>> +             puthexc_ll((computed >> 8)  & 0xff);
>>> +             puthexc_ll(computed & 0xff);
>>> +             puts_ll(" vs ");
>>> +             puthexc_ll((expected >> 24) & 0xff);
>>> +             puthexc_ll((expected >> 16) & 0xff);
>>> +             puthexc_ll((expected >> 8)  & 0xff);
>>> +             puthexc_ll(expected & 0xff);
>>> +             putc_ll('\n');
>>> +     }
>>> +
>>> +     return computed == expected ? 0 : -1;
>>> +}
>>> +#endif
>>> +
>>>  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len)
>>>  {
>>>       uint32_t pbl_hash_len;
>>> diff --git a/scripts/gen-fw-s b/scripts/gen-fw-s
>>> index 78c3193479..d7d7d15824 100755
>>> --- a/scripts/gen-fw-s
>>> +++ b/scripts/gen-fw-s
>>> @@ -3,13 +3,20 @@
>>>  #
>>>  # Generate assembly source to embed firmware binary
>>>  #
>>> -# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir]
>>> +# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir] [verify-algo]
>>> +#
>>> +# verify-algo selects the metadata emitted in the .rodata.<fwstr>.sha
>>> +# section, matched by firmware_ext_verify() in include/firmware.h:
>>> +#   sha256 (default) -- 32-byte SHA-256
>>> +#   crc32            -- 4-byte CRC32 (zlib polynomial)
>>> +#   none             -- no section, no symbols
>>>
>>>  fwname=$1
>>>  fwdir=$2
>>>  secprefix=$3
>>>  secflags=$4
>>>  fwobjdir=$5
>>> +verify_algo=${6:-sha256}
>>>
>>>  fwstr=$(echo "$fwname" | tr '/.-' '___')
>>>  fwpath="$fwdir/$fwname"
>>> @@ -19,8 +26,6 @@ if [ -f "$fwpath" ]; then
>>>       fw_uncompressed=$(stat -c %s "$fwpath")
>>>  fi
>>>
>>> -sha=$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&, /g;s/, $//')
>>> -
>>>  echo "/* Generated by scripts/gen-fw-s */"
>>>  echo "#include <asm-generic/pointer.h>"
>>>  echo ".section .note.GNU-stack,\"\",%progbits"
>>> @@ -59,19 +64,39 @@ echo ".global _fw_z_${fwstr}_end"
>>>  echo "_fw_z_${fwstr}_end:"
>>>  echo "#endif"
>>>
>>> -# include sha256, needed for external firmware
>>> -echo "    .section .rodata.${fwstr}.sha"
>>> -echo "    .p2align ASM_LGPTR"
>>> -echo ".global _fw_${fwstr}_sha_start"
>>> -echo "_fw_${fwstr}_sha_start:"
>>> -echo "    .byte ${sha}"
>>> -echo ".global _fw_${fwstr}_sha_end"
>>> -echo "_fw_${fwstr}_sha_end:"
>>> -if [ -f "$fwpath" ]; then
>>> -     echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha_end"
>>> -     echo ".error \"sha256sum invalid\""
>>> -     echo ".endif"
>>> -fi
>>> +# verify metadata for fw-external blobs, consumed by firmware_ext_verify()
>>> +# in include/firmware.h. Driven by the PBL_FIRMWARE_EXT_VERIFY Kconfig
>>> +# choice (passed in from firmware/Makefile).
>>> +case "$verify_algo" in
>>> +none)
>>> +     ;;
>>> +crc32)
>>> +     crc=$(python3 -c 'import sys,zlib; sys.stdout.write("0x%08x" % zlib.crc32(open(sys.argv[1],"rb").read()))' \
>>> +             "$fwpath" 2>/dev/null || echo "0x00000000")
>>> +     echo "    .section .rodata.${fwstr}.sha"
>>> +     echo "    .p2align 2"
>>> +     echo ".global _fw_${fwstr}_sha_start"
>>> +     echo "_fw_${fwstr}_sha_start:"
>>> +     echo "    .long ${crc}"
>>> +     echo ".global _fw_${fwstr}_sha_end"
>>> +     echo "_fw_${fwstr}_sha_end:"
>>> +     ;;
>>> +sha256|*)
>>> +     sha=$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&, /g;s/, $//')
>>> +     echo "    .section .rodata.${fwstr}.sha"
>>> +     echo "    .p2align ASM_LGPTR"
>>> +     echo ".global _fw_${fwstr}_sha_start"
>>> +     echo "_fw_${fwstr}_sha_start:"
>>> +     echo "    .byte ${sha}"
>>> +     echo ".global _fw_${fwstr}_sha_end"
>>> +     echo "_fw_${fwstr}_sha_end:"
>>> +     if [ -f "$fwpath" ]; then
>>> +             echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha_end"
>>> +             echo ".error \"sha256sum invalid\""
>>> +             echo ".endif"
>>> +     fi
>>> +     ;;
>>> +esac
>>>
>>>  # include a string containing the firmware name. When a non existing
>>>  # firmware is referenced in the PBL then _fwname_${fwstr} is referenced
>>>
>>> base-commit: 6c70fb327d486376c1f2e37dfff2212cb9eebb1b
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



