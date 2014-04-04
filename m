Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-f174.google.com ([209.85.160.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WW9P4-0004xu-1Y
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 19:03:52 +0000
Received: by mail-yk0-f174.google.com with SMTP id 20so3289722yks.5
 for <barebox@lists.infradead.org>; Fri, 04 Apr 2014 12:03:26 -0700 (PDT)
Received: from localhost (host130.181-14-219.telecom.net.ar. [181.14.219.130])
 by mx.google.com with ESMTPSA id
 g65sm16287311yhm.28.2014.04.04.12.03.20
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
 Fri, 04 Apr 2014 12:03:22 -0700 (PDT)
Date: Fri, 4 Apr 2014 16:01:44 -0300
From: Guido =?iso-8859-1?Q?Mart=EDnez?= <guido@vanguardiasur.com.ar>
Message-ID: <20140404190144.GA5066@solid>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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
Subject: [BUG] barebox defconfig not booting on beaglebone black
To: barebox@lists.infradead.org


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I think I have found some unexpected behaviour while building barebox
for the Beaglebone Black soc. I'm using the default configs for the
first and second stage bootloaders and I get an unbootable system.

This was my build procedure:

$ make am335x_mlo_defconfig
$ make -j8
$ cp images/start_am33xx_beaglebone_sram.pblx.mlo $CARD/MLO
$=20
$ make am335x_beaglebone_defconfig
$ make -j8
$ cp barebox.bin $CARD/barebox.bin

If I'm doing anything wrong, please tell me. In any case, barebox
correctly detects that the system is a BBB, but it hangs (apparently)
after detecting the mmc.

Note that there is no kernel on the drive, but to my understanding, I
should still get a barebox prompt.

I attached the log messages I get while trying to boot. Both with default
log level and full log level.

Any idea on where I might start looking to fix this?

Thank you!
Guido

(I'm not on the list, please cc me)

--=20
Guido Mart=EDnez, VanguardiaSur
www.vanguardiasur.com.ar

--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=log



barebox 2014.04.0-00107-g0a5529d #1 Fri Apr 4 15:04:49 ART 2014


Board: TI AM335x BeagleBone black
detected 'BeagleBone Black'
omap-hsmmc 48060000.mmc: registered as 48060000.mmc
omap-hsmmc 481d8000.mmc: registered as 481d8000.mmc
booting from MMC
mmc0: detected SD card version 2.0
mmc0: registered mmc0

--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=log-full



barebox 2014.04.0-00107-g0a5529d #1 Fri Apr 4 14:46:59 ART 2014


Board: TI AM335x BeagleBone black
er_device: 48310000.rng
xmalloc 9be0f6f0 (size 144)
of_platform_device_create: register device leds.3, io=0xffffffff
register_device: leds.3
xmalloc 9be0f784 (size 144)
of_platform_device_create: register device fixedregulator.4, io=0xffffffff
register_device: fixedregulator.4
xmalloc 9be0f818 (size 144)
of_platform_device_create: register device hdmi.5, io=0xffffffff
register_device: hdmi.5
initcall-> 0x9fe087e9
register_driver: pinctrl-single
xmalloc 9be0f8ac (size 36)
request_region ok: 0x44e10800:0x44e10a37
xmalloc 9be0f8d4 (size 36)
pinctrl-single 44e10800.pinmux: set state: /pinmux@44e10800/pinmux_clkout2_pin
initcall-> 0x9fe0b205
xmalloc 9be0f910 (size 1024)
xmalloc 9be0fd14 (size 5120)
initcall-> 0x9fe0be55
initcall-> 0x9fe0c955
initcall-> 0x9fe02201
register_driver: ns16550_serial
pinctrl-single 44e10800.pinmux: set state: /pinmux@44e10800/pinmux_uart0_pins
request_region ok: 0x44e09000:0x44e0afff
xmalloc 9be11118 (size 36)
xmalloc 9be11154 (size 224)
register_device: cs0
initcall-> 0x9fe017fd
initcall-> 0x9fe0cd85
request_region ok: 0x9fff4000:0x9fff7fff
xmalloc 9be11238 (size 36)
mmu: ttb: 0x9fff4000
mmu: remapping SDRAM from 0x80000000 (size 0x20000000)
mmu: ptes: 0x9be15000 ttb_start: 0x00000800 ttb_end: 0x00000a00
initcall-> 0x9fe0023d
request_region ok: 0x9be00000:0x9fdfffff
xmalloc 9be11270 (size 36)
request_region ok: 0x9fe00000:0x9fe11076
xmalloc 9be112ac (size 36)
request_region ok: 0x9fe11077:0x9fe167b7
xmalloc 9be112e4 (size 36)
request_region ok: 0x9fe167b8:0x9fe175fb
xmalloc 9be11320 (size 36)
initcall-> 0x9fe00779
initcall-> 0x9fe07151
register_driver: omap-gpio
xmalloc 9be11358 (size 28)
request_region ok: 0x44e07000:0x44e07fff
xmalloc 9be11378 (size 36)
gpiolib: gpiochip_find_base: found new base at 0
omap-gpio 44e07000.gpio: probed gpiochip-1 with base 0
xmalloc 9be113b4 (size 28)
request_region ok: 0x4804c000:0x4804cfff
xmalloc 9be113d4 (size 36)
gpiolib: gpiochip_find_base: found new base at 32
omap-gpio 4804c000.gpio: probed gpiochip-1 with base 32
xmalloc 9be11818 (size 28)
request_region ok: 0x481ac000:0x481acfff
xmalloc 9be11838 (size 36)
gpiolib: gpiochip_find_base: found new base at 64
omap-gpio 481ac000.gpio: probed gpiochip-1 with base 64
xmalloc 9be11874 (size 28)
request_region ok: 0x481ae000:0x481aefff
xmalloc 9be11894 (size 36)
gpiolib: gpiochip_find_base: found new base at 96
omap-gpio 481ae000.gpio: probed gpiochip-1 with base 96
initcall-> 0x9fe0ae11
register_driver: fat
initcall-> 0x9fe0bd95
detected 'BeagleBone Black'
initcall-> 0x9fe0bd79
initcall-> 0x9fe0bdf1
initcall-> 0x9fe0c969
request_region ok: 0x9fff8000:0x9fffffff
xmalloc 9be118d0 (size 36)
initcall-> 0x9fe003fd
initcall-> 0x9fe03a89
register_driver: gpmc_nand
initcall-> 0x9fe0488d
register_driver: m25p80
initcall-> 0x9fe05715
register_driver: omap-spi
initcall-> 0x9fe05b8d
initcall-> 0x9fe06aa9
register_driver: omap-hsmmc
pinctrl-single 44e10800.pinmux: set state: /pinmux@44e10800/pinmux_mmc1_pins
xmalloc 9be11b24 (size 80)
request_region ok: 0x48060000:0x48060fff
xmalloc 9be11b78 (size 36)
xmalloc 9be14004 (size 1192)
register_device: mmc0
omap-hsmmc 48060000.mmc: registered as 48060000.mmc
pinctrl-single 44e10800.pinmux: set state: /pinmux@44e10800/pinmux_emmc_pins
xmalloc 9be144b0 (size 80)
request_region ok: 0x481d8000:0x481d8fff
xmalloc 9be11bb0 (size 36)
xmalloc 9be14504 (size 1192)
register_device: mmc1
omap-hsmmc 481d8000.mmc: registered as 481d8000.mmc
initcall-> 0x9fe08925
register_driver: omap-gpmc
initcall-> 0x9fe0be0d
initcall-> 0x9fe00099
xmalloc 9be149b0 (size 16)
initcall-> 0x9fe003ed
initcall-> 0x9fe01601
xmalloc 9be149c4 (size 16)
initcall-> 0x9fe0c0cd
initcalls done
booting from MMC
mmc0: SD Card Rev. 2.00 or later detected
mmc0: Put the Card in Identify Mode
mmc0: Card's identification data is: 03534453-55303847-80609994-9400DB4D
mmc0: Get/Set relative address
mmc0: Get card's specific data
mmc0: Card's specific data is: 400E0032-5B590000-3B377F80-0A4040AF
mmc0: Transfer speed: 25000000
mmc0: Max. block length are: Write=512, Read=512 Bytes
mmc0: Read block length: 512, Write block length: 512
mmc0: Select the card, and put it into Transfer Mode
mmc0: Changing transfer frequency
mmc0: Trying to read the SCR (try 1 of 3)
mmc0: detected SD card version 2.0
mmc0: Capacity: 7580 MiB
mmc0: Prepare for bus width change
mmc0: Set SD bus width to 4 bit
mmc0: Card is up and running now, registering as a disk
blockdevice_register: rdbufsize: 128 blockbits: 9 blkmask: 0x0000007f
xmalloc 9be149e8 (size 24)
xmalloc 9c015004 (size 24)
xmalloc 9c015020 (size 24)
xmalloc 9c035084 (size 24)
xmalloc 9c0350a0 (size 24)
xmalloc 9c055104 (size 24)
xmalloc 9c055120 (size 24)
xmalloc 9c075184 (size 24)
mmc0: registered mmc0
xmalloc 9be14a04 (size 456)
block_cache: 0 to 0
mmc0: mci_sd_read: Read 128 block(s), starting at 0
chunk_get_cached: found 0 in 0
chunk_get_cached: found 1 in 0
mmc0: Skipping empty partition 2
mmc0: Skipping empty partition 3
xmalloc 9c0751a0 (size 8)
mmc0: Registering partition mmc0.0 on drive mmc0
xmalloc 9be14bd0 (size 72)
mmc0: Registering partition mmc0.1 on drive mmc0
xmalloc 9be14c1c (size 72)
mmc0: SD Card successfully added
xmalloc 9c0851d4 (size 4)
in: /
mount: mmc0.0 on / type fat, options=
xmalloc 9be14a04 (size 176)
register_device: fat0
xmalloc 9be14c68 (size 560)
disk_read: sector: 0 count: 1
chunk_get_cached: found 63 in 0
xmalloc 9c065164 (size 15)
in: /barebox.bin
xmalloc 9c0450c4 (size 15)
in: /barebox.bin
disk_read: sector: 2256 count: 1
block_cache: 2304 to 1
mmc0: mci_sd_read: Read 128 block(s), starting at 2304
chunk_get_cached: found 2319 in 1
xmalloc 9c095204 (size 214985)
xmalloc 9c065164 (size 15)
in: /barebox.bin
xmalloc 9c0450c4 (size 15)
in: /barebox.bin
xmalloc 9be12040 (size 540)
disk_read: sector: 19173 count: 1
block_cache: 19200 to 2
mmc0: mci_sd_read: Read 128 block(s), starting at 19200
chunk_get_cached: found 19236 in 2
disk_read: sector: 164 count: 1
block_cache: 128 to 3
mmc0: mci_sd_read: Read 128 block(s), starting at 128
chunk_get_cached: found 227 in 3
disk_read: sector: 19174 count: 1
chunk_get_cached: found 19237 in 2
disk_read: sector: 19175 count: 1
chunk_get_cached: found 19238 in 2
disk_read: sector: 19176 count: 1
chunk_get_cached: found 19239 in 2
disk_read: sector: 19177 count: 1
chunk_get_cached: found 19240 in 2
disk_read: sector: 19178 count: 1
chunk_get_cached: found 19241 in 2
disk_read: sector: 19179 count: 1
chunk_get_cached: found 19242 in 2
disk_read: sector: 19180 count: 1
chunk_get_cached: found 19243 in 2
disk_read: sector: 19181 count: 1
chunk_get_cached: found 19244 in 2
disk_read: sector: 19182 count: 1
chunk_get_cached: found 19245 in 2
disk_read: sector: 19183 count: 1
chunk_get_cached: found 19246 in 2
disk_read: sector: 19184 count: 1
chunk_get_cached: found 19247 in 2
disk_read: sector: 19185 count: 1
chunk_get_cached: found 19248 in 2
disk_read: sector: 19186 count: 1
chunk_get_cached: found 19249 in 2
disk_read: sector: 19187 count: 1
chunk_get_cached: found 19250 in 2
disk_read: sector: 19188 count: 1
chunk_get_cached: found 19251 in 2
disk_read: sector: 19189 count: 1
chunk_get_cached: found 19252 in 2
disk_read: sector: 19190 count: 1
chunk_get_cached: found 19253 in 2
disk_read: sector: 19191 count: 1
chunk_get_cached: found 19254 in 2
disk_read: sector: 19192 count: 1
chunk_get_cached: found 19255 in 2
disk_read: sector: 19193 count: 1
chunk_get_cached: found 19256 in 2
disk_read: sector: 19194 count: 1
chunk_get_cached: found 19257 in 2
disk_read: sector: 19195 count: 1
chunk_get_cached: found 19258 in 2
disk_read: sector: 19196 count: 1
chunk_get_cached: found 19259 in 2
disk_read: sector: 19197 count: 1
chunk_get_cached: found 19260 in 2
disk_read: sector: 19198 count: 1
chunk_get_cached: found 19261 in 2
disk_read: sector: 19199 count: 1
chunk_get_cached: found 19262 in 2
disk_read: sector: 19200 count: 1
chunk_get_cached: found 19263 in 2
disk_read: sector: 19201 count: 1
chunk_get_cached: found 19264 in 2
disk_read: sector: 19202 count: 1
chunk_get_cached: found 19265 in 2
disk_read: sector: 19203 count: 1
chunk_get_cached: found 19266 in 2
disk_read: sector: 19204 count: 1
chunk_get_cached: found 19267 in 2
disk_read: sector: 19205 count: 1
chunk_get_cached: found 19268 in 2
disk_read: sector: 19206 count: 1
chunk_get_cached: found 19269 in 2
disk_read: sector: 19207 count: 1
chunk_get_cached: found 19270 in 2
disk_read: sector: 19208 count: 1
chunk_get_cached: found 19271 in 2
disk_read: sector: 19209 count: 1
chunk_get_cached: found 19272 in 2
disk_read: sector: 19210 count: 1
chunk_get_cached: found 19273 in 2
disk_read: sector: 19211 count: 1
chunk_get_cached: found 19274 in 2
disk_read: sector: 19212 count: 1
chunk_get_cached: found 19275 in 2
disk_read: sector: 19213 count: 1
chunk_get_cached: found 19276 in 2
disk_read: sector: 19214 count: 1
chunk_get_cached: found 19277 in 2
disk_read: sector: 19215 count: 1
chunk_get_cached: found 19278 in 2
disk_read: sector: 19216 count: 1
chunk_get_cached: found 19279 in 2
disk_read: sector: 19217 count: 1
chunk_get_cached: found 19280 in 2
disk_read: sector: 19218 count: 1
chunk_get_cached: found 19281 in 2
disk_read: sector: 19219 count: 1
chunk_get_cached: found 19282 in 2
disk_read: sector: 19220 count: 1
chunk_get_cached: found 19283 in 2
disk_read: sector: 19221 count: 1
chunk_get_cached: found 19284 in 2
disk_read: sector: 19222 count: 1
chunk_get_cached: found 19285 in 2
disk_read: sector: 19223 count: 1
chunk_get_cached: found 19286 in 2
disk_read: sector: 19224 count: 1
chunk_get_cached: found 19287 in 2
disk_read: sector: 19225 count: 1
chunk_get_cached: found 19288 in 2
disk_read: sector: 19226 count: 1
chunk_get_cached: found 19289 in 2
disk_read: sector: 19227 count: 1
chunk_get_cached: found 19290 in 2
disk_read: sector: 19228 count: 1
chunk_get_cached: found 19291 in 2
disk_read: sector: 19229 count: 1
chunk_get_cached: found 19292 in 2
disk_read: sector: 19230 count: 1
chunk_get_cached: found 19293 in 2
disk_read: sector: 19231 count: 1
chunk_get_cached: found 19294 in 2
disk_read: sector: 19232 count: 1
chunk_get_cached: found 19295 in 2
disk_read: sector: 19233 count: 1
chunk_get_cached: found 19296 in 2
disk_read: sector: 19234 count: 1
chunk_get_cached: found 19297 in 2
disk_read: sector: 19235 count: 1
chunk_get_cached: found 19298 in 2
disk_read: sector: 19236 count: 1
chunk_get_cached: found 19299 in 2
disk_read: sector: 19237 count: 1
chunk_get_cached: found 19300 in 2
disk_read: sector: 19238 count: 1
chunk_get_cached: found 19301 in 2
disk_read: sector: 19239 count: 1
chunk_get_cached: found 19302 in 2
disk_read: sector: 19240 count: 1
chunk_get_cached: found 19303 in 2
disk_read: sector: 19241 count: 1
chunk_get_cached: found 19304 in 2
disk_read: sector: 19242 count: 1
chunk_get_cached: found 19305 in 2
disk_read: sector: 19243 count: 1
chunk_get_cached: found 19306 in 2
disk_read: sector: 19244 count: 1
chunk_get_cached: found 19307 in 2
disk_read: sector: 19245 count: 1
chunk_get_cached: found 19308 in 2
disk_read: sector: 19246 count: 1
chunk_get_cached: found 19309 in 2
disk_read: sector: 19247 count: 1
chunk_get_cached: found 19310 in 2
disk_read: sector: 19248 count: 1
chunk_get_cached: found 19311 in 2
disk_read: sector: 19249 count: 1
chunk_get_cached: found 19312 in 2
disk_read: sector: 19250 count: 1
chunk_get_cached: found 19313 in 2
disk_read: sector: 19251 count: 1
chunk_get_cached: found 19314 in 2
disk_read: sector: 19252 count: 1
chunk_get_cached: found 19315 in 2
disk_read: sector: 19253 count: 1
chunk_get_cached: found 19316 in 2
disk_read: sector: 19254 count: 1
chunk_get_cached: found 19317 in 2
disk_read: sector: 19255 count: 1
chunk_get_cached: found 19318 in 2
disk_read: sector: 19256 count: 1
chunk_get_cached: found 19319 in 2
disk_read: sector: 19257 count: 1
chunk_get_cached: found 19320 in 2
disk_read: sector: 19258 count: 1
chunk_get_cached: found 19321 in 2
disk_read: sector: 19259 count: 1
chunk_get_cached: found 19322 in 2
disk_read: sector: 19260 count: 1
chunk_get_cached: found 19323 in 2
disk_read: sector: 19261 count: 1
chunk_get_cached: found 19324 in 2
disk_read: sector: 19262 count: 1
chunk_get_cached: found 19325 in 2
disk_read: sector: 19263 count: 1
chunk_get_cached: found 19326 in 2
disk_read: sector: 19264 count: 1
chunk_get_cached: found 19327 in 2
disk_read: sector: 19265 count: 1
block_cache: 19328 to 4
mmc0: mci_sd_read: Read 128 block(s), starting at 19328
chunk_get_cached: found 19328 in 4
disk_read: sector: 19266 count: 1
chunk_get_cached: found 19329 in 4
disk_read: sector: 19267 count: 1
chunk_get_cached: found 19330 in 4
disk_read: sector: 19268 count: 1
chunk_get_cached: found 19331 in 4
disk_read: sector: 19269 count: 1
chunk_get_cached: found 19332 in 4
disk_read: sector: 19270 count: 1
chunk_get_cached: found 19333 in 4
disk_read: sector: 19271 count: 1
chunk_get_cached: found 19334 in 4
disk_read: sector: 19272 count: 1
chunk_get_cached: found 19335 in 4
disk_read: sector: 19273 count: 1
chunk_get_cached: found 19336 in 4
disk_read: sector: 19274 count: 1
chunk_get_cached: found 19337 in 4
disk_read: sector: 19275 count: 1
chunk_get_cached: found 19338 in 4
disk_read: sector: 19276 count: 1
chunk_get_cached: found 19339 in 4
disk_read: sector: 19277 count: 1
chunk_get_cached: found 19340 in 4
disk_read: sector: 19278 count: 1
chunk_get_cached: found 19341 in 4
disk_read: sector: 165 count: 1
chunk_get_cached: found 228 in 3
disk_read: sector: 19279 count: 1
chunk_get_cached: found 19342 in 4
disk_read: sector: 19280 count: 1
chunk_get_cached: found 19343 in 4
disk_read: sector: 19281 count: 1
chunk_get_cached: found 19344 in 4
disk_read: sector: 19282 count: 1
chunk_get_cached: found 19345 in 4
disk_read: sector: 19283 count: 1
chunk_get_cached: found 19346 in 4
disk_read: sector: 19284 count: 1
chunk_get_cached: found 19347 in 4
disk_read: sector: 19285 count: 1
chunk_get_cached: found 19348 in 4
disk_read: sector: 19286 count: 1
chunk_get_cached: found 19349 in 4
disk_read: sector: 19287 count: 1
chunk_get_cached: found 19350 in 4
disk_read: sector: 19288 count: 1
chunk_get_cached: found 19351 in 4
disk_read: sector: 19289 count: 1
chunk_get_cached: found 19352 in 4
disk_read: sector: 19290 count: 1
chunk_get_cached: found 19353 in 4
disk_read: sector: 19291 count: 1
chunk_get_cached: found 19354 in 4
disk_read: sector: 19292 count: 1
chunk_get_cached: found 19355 in 4
disk_read: sector: 19293 count: 1
chunk_get_cached: found 19356 in 4
disk_read: sector: 19294 count: 1
chunk_get_cached: found 19357 in 4
disk_read: sector: 19295 count: 1
chunk_get_cached: found 19358 in 4
disk_read: sector: 19296 count: 1
chunk_get_cached: found 19359 in 4
disk_read: sector: 19297 count: 1
chunk_get_cached: found 19360 in 4
disk_read: sector: 19298 count: 1
chunk_get_cached: found 19361 in 4
disk_read: sector: 19299 count: 1
chunk_get_cached: found 19362 in 4
disk_read: sector: 19300 count: 1
chunk_get_cached: found 19363 in 4
disk_read: sector: 19301 count: 1
chunk_get_cached: found 19364 in 4
disk_read: sector: 19302 count: 1
chunk_get_cached: found 19365 in 4
disk_read: sector: 19303 count: 1
chunk_get_cached: found 19366 in 4
disk_read: sector: 19304 count: 1
chunk_get_cached: found 19367 in 4
disk_read: sector: 19305 count: 1
chunk_get_cached: found 19368 in 4
disk_read: sector: 19306 count: 1
chunk_get_cached: found 19369 in 4
disk_read: sector: 19307 count: 1
chunk_get_cached: found 19370 in 4
disk_read: sector: 19308 count: 1
chunk_get_cached: found 19371 in 4
disk_read: sector: 19309 count: 1
chunk_get_cached: found 19372 in 4
disk_read: sector: 19310 count: 1
chunk_get_cached: found 19373 in 4
disk_read: sector: 19311 count: 1
chunk_get_cached: found 19374 in 4
disk_read: sector: 19312 count: 1
chunk_get_cached: found 19375 in 4
disk_read: sector: 19313 count: 1
chunk_get_cached: found 19376 in 4
disk_read: sector: 19314 count: 1
chunk_get_cached: found 19377 in 4
disk_read: sector: 19315 count: 1
chunk_get_cached: found 19378 in 4
disk_read: sector: 19316 count: 1
chunk_get_cached: found 19379 in 4
disk_read: sector: 19317 count: 1
chunk_get_cached: found 19380 in 4
disk_read: sector: 19318 count: 1
chunk_get_cached: found 19381 in 4
disk_read: sector: 19319 count: 1
chunk_get_cached: found 19382 in 4
disk_read: sector: 19320 count: 1
chunk_get_cached: found 19383 in 4
disk_read: sector: 19321 count: 1
chunk_get_cached: found 19384 in 4
disk_read: sector: 19322 count: 1
chunk_get_cached: found 19385 in 4
disk_read: sector: 19323 count: 1
chunk_get_cached: found 19386 in 4
disk_read: sector: 19324 count: 1
chunk_get_cached: found 19387 in 4
disk_read: sector: 19325 count: 1
chunk_get_cached: found 19388 in 4
disk_read: sector: 19326 count: 1
chunk_get_cached: found 19389 in 4
disk_read: sector: 19327 count: 1
chunk_get_cached: found 19390 in 4
disk_read: sector: 19328 count: 1
chunk_get_cached: found 19391 in 4
disk_read: sector: 19329 count: 1
chunk_get_cached: found 19392 in 4
disk_read: sector: 19330 count: 1
chunk_get_cached: found 19393 in 4
disk_read: sector: 19331 count: 1
chunk_get_cached: found 19394 in 4
disk_read: sector: 19332 count: 1
chunk_get_cached: found 19395 in 4
disk_read: sector: 19333 count: 1
chunk_get_cached: found 19396 in 4
disk_read: sector: 19334 count: 1
chunk_get_cached: found 19397 in 4
disk_read: sector: 19335 count: 1
chunk_get_cached: found 19398 in 4
disk_read: sector: 19336 count: 1
chunk_get_cached: found 19399 in 4
disk_read: sector: 19337 count: 1
chunk_get_cached: found 19400 in 4
disk_read: sector: 19338 count: 1
chunk_get_cached: found 19401 in 4
disk_read: sector: 19339 count: 1
chunk_get_cached: found 19402 in 4
disk_read: sector: 19340 count: 1
chunk_get_cached: found 19403 in 4
disk_read: sector: 19341 count: 1
chunk_get_cached: found 19404 in 4
disk_read: sector: 19342 count: 1
chunk_get_cached: found 19405 in 4
disk_read: sector: 19343 count: 1
chunk_get_cached: found 19406 in 4
disk_read: sector: 19344 count: 1
chunk_get_cached: found 19407 in 4
disk_read: sector: 19345 count: 1
chunk_get_cached: found 19408 in 4
disk_read: sector: 19346 count: 1
chunk_get_cached: found 19409 in 4
disk_read: sector: 19347 count: 1
chunk_get_cached: found 19410 in 4
disk_read: sector: 19348 count: 1
chunk_get_cached: found 19411 in 4
disk_read: sector: 19349 count: 1
chunk_get_cached: found 19412 in 4
disk_read: sector: 19350 count: 1
chunk_get_cached: found 19413 in 4
disk_read: sector: 19351 count: 1
chunk_get_cached: found 19414 in 4
disk_read: sector: 19352 count: 1
chunk_get_cached: found 19415 in 4
disk_read: sector: 19353 count: 1
chunk_get_cached: found 19416 in 4
disk_read: sector: 19354 count: 1
chunk_get_cached: found 19417 in 4
disk_read: sector: 19355 count: 1
chunk_get_cached: found 19418 in 4
disk_read: sector: 19356 count: 1
chunk_get_cached: found 19419 in 4
disk_read: sector: 19357 count: 1
chunk_get_cached: found 19420 in 4
disk_read: sector: 19358 count: 1
chunk_get_cached: found 19421 in 4
disk_read: sector: 19359 count: 1
chunk_get_cached: found 19422 in 4
disk_read: sector: 19360 count: 1
chunk_get_cached: found 19423 in 4
disk_read: sector: 19361 count: 1
chunk_get_cached: found 19424 in 4
disk_read: sector: 19362 count: 1
chunk_get_cached: found 19425 in 4
disk_read: sector: 19363 count: 1
chunk_get_cached: found 19426 in 4
disk_read: sector: 19364 count: 1
chunk_get_cached: found 19427 in 4
disk_read: sector: 19365 count: 1
chunk_get_cached: found 19428 in 4
disk_read: sector: 19366 count: 1
chunk_get_cached: found 19429 in 4
disk_read: sector: 19367 count: 1
chunk_get_cached: found 19430 in 4
disk_read: sector: 19368 count: 1
chunk_get_cached: found 19431 in 4
disk_read: sector: 19369 count: 1
chunk_get_cached: found 19432 in 4
disk_read: sector: 19370 count: 1
chunk_get_cached: found 19433 in 4
disk_read: sector: 19371 count: 1
chunk_get_cached: found 19434 in 4
disk_read: sector: 19372 count: 1
chunk_get_cached: found 19435 in 4
disk_read: sector: 19373 count: 1
chunk_get_cached: found 19436 in 4
disk_read: sector: 19374 count: 1
chunk_get_cached: found 19437 in 4
disk_read: sector: 19375 count: 1
chunk_get_cached: found 19438 in 4
disk_read: sector: 19376 count: 1
chunk_get_cached: found 19439 in 4
disk_read: sector: 19377 count: 1
chunk_get_cached: found 19440 in 4
disk_read: sector: 19378 count: 1
chunk_get_cached: found 19441 in 4
disk_read: sector: 19379 count: 1
chunk_get_cached: found 19442 in 4
disk_read: sector: 19380 count: 1
chunk_get_cached: found 19443 in 4
disk_read: sector: 19381 count: 1
chunk_get_cached: found 19444 in 4
disk_read: sector: 19382 count: 1
chunk_get_cached: found 19445 in 4
disk_read: sector: 19383 count: 1
chunk_get_cached: found 19446 in 4
disk_read: sector: 19384 count: 1
chunk_get_cached: found 19447 in 4
disk_read: sector: 19385 count: 1
chunk_get_cached: found 19448 in 4
disk_read: sector: 19386 count: 1
chunk_get_cached: found 19449 in 4
disk_read: sector: 19387 count: 1
chunk_get_cached: found 19450 in 4
disk_read: sector: 19388 count: 1
chunk_get_cached: found 19451 in 4
disk_read: sector: 19389 count: 1
chunk_get_cached: found 19452 in 4
disk_read: sector: 19390 count: 1
chunk_get_cached: found 19453 in 4
disk_read: sector: 19391 count: 1
chunk_get_cached: found 19454 in 4
disk_read: sector: 19392 count: 1
chunk_get_cached: found 19455 in 4
disk_read: sector: 19393 count: 1
block_cache: 19456 to 5
mmc0: mci_sd_read: Read 128 block(s), starting at 19456
chunk_get_cached: found 19456 in 5
disk_read: sector: 19394 count: 1
chunk_get_cached: found 19457 in 5
disk_read: sector: 19395 count: 1
chunk_get_cached: found 19458 in 5
disk_read: sector: 19396 count: 1
chunk_get_cached: found 19459 in 5
disk_read: sector: 19397 count: 1
chunk_get_cached: found 19460 in 5
disk_read: sector: 19398 count: 1
chunk_get_cached: found 19461 in 5
disk_read: sector: 19399 count: 1
chunk_get_cached: found 19462 in 5
disk_read: sector: 19400 count: 1
chunk_get_cached: found 19463 in 5
disk_read: sector: 19401 count: 1
chunk_get_cached: found 19464 in 5
disk_read: sector: 19402 count: 1
chunk_get_cached: found 19465 in 5
disk_read: sector: 19403 count: 1
chunk_get_cached: found 19466 in 5
disk_read: sector: 19404 count: 1
chunk_get_cached: found 19467 in 5
disk_read: sector: 19405 count: 1
chunk_get_cached: found 19468 in 5
disk_read: sector: 19406 count: 1
chunk_get_cached: found 19469 in 5
disk_read: sector: 166 count: 1
chunk_get_cached: found 229 in 3
disk_read: sector: 19407 count: 1
chunk_get_cached: found 19470 in 5
disk_read: sector: 19408 count: 1
chunk_get_cached: found 19471 in 5
disk_read: sector: 19409 count: 1
chunk_get_cached: found 19472 in 5
disk_read: sector: 19410 count: 1
chunk_get_cached: found 19473 in 5
disk_read: sector: 19411 count: 1
chunk_get_cached: found 19474 in 5
disk_read: sector: 19412 count: 1
chunk_get_cached: found 19475 in 5
disk_read: sector: 19413 count: 1
chunk_get_cached: found 19476 in 5
disk_read: sector: 19414 count: 1
chunk_get_cached: found 19477 in 5
disk_read: sector: 19415 count: 1
chunk_get_cached: found 19478 in 5
disk_read: sector: 19416 count: 1
chunk_get_cached: found 19479 in 5
disk_read: sector: 19417 count: 1
chunk_get_cached: found 19480 in 5
disk_read: sector: 19418 count: 1
chunk_get_cached: found 19481 in 5
disk_read: sector: 19419 count: 1
chunk_get_cached: found 19482 in 5
disk_read: sector: 19420 count: 1
chunk_get_cached: found 19483 in 5
disk_read: sector: 19421 count: 1
chunk_get_cached: found 19484 in 5
disk_read: sector: 19422 count: 1
chunk_get_cached: found 19485 in 5
disk_read: sector: 19423 count: 1
chunk_get_cached: found 19486 in 5
disk_read: sector: 19424 count: 1
chunk_get_cached: found 19487 in 5
disk_read: sector: 19425 count: 1
chunk_get_cached: found 19488 in 5
disk_read: sector: 19426 count: 1
chunk_get_cached: found 19489 in 5
disk_read: sector: 19427 count: 1
chunk_get_cached: found 19490 in 5
disk_read: sector: 19428 count: 1
chunk_get_cached: found 19491 in 5
disk_read: sector: 19429 count: 1
chunk_get_cached: found 19492 in 5
disk_read: sector: 19430 count: 1
chunk_get_cached: found 19493 in 5
disk_read: sector: 19431 count: 1
chunk_get_cached: found 19494 in 5
disk_read: sector: 19432 count: 1
chunk_get_cached: found 19495 in 5
disk_read: sector: 19433 count: 1
chunk_get_cached: found 19496 in 5
disk_read: sector: 19434 count: 1
chunk_get_cached: found 19497 in 5
disk_read: sector: 19435 count: 1
chunk_get_cached: found 19498 in 5
disk_read: sector: 19436 count: 1
chunk_get_cached: found 19499 in 5
disk_read: sector: 19437 count: 1
chunk_get_cached: found 19500 in 5
disk_read: sector: 19438 count: 1
chunk_get_cached: found 19501 in 5
disk_read: sector: 19439 count: 1
chunk_get_cached: found 19502 in 5
disk_read: sector: 19440 count: 1
chunk_get_cached: found 19503 in 5
disk_read: sector: 19441 count: 1
chunk_get_cached: found 19504 in 5
disk_read: sector: 19442 count: 1
chunk_get_cached: found 19505 in 5
disk_read: sector: 19443 count: 1
chunk_get_cached: found 19506 in 5
disk_read: sector: 19444 count: 1
chunk_get_cached: found 19507 in 5
disk_read: sector: 19445 count: 1
chunk_get_cached: found 19508 in 5
disk_read: sector: 19446 count: 1
chunk_get_cached: found 19509 in 5
disk_read: sector: 19447 count: 1
chunk_get_cached: found 19510 in 5
disk_read: sector: 19448 count: 1
chunk_get_cached: found 19511 in 5
disk_read: sector: 19449 count: 1
chunk_get_cached: found 19512 in 5
disk_read: sector: 19450 count: 1
chunk_get_cached: found 19513 in 5
disk_read: sector: 19451 count: 1
chunk_get_cached: found 19514 in 5
disk_read: sector: 19452 count: 1
chunk_get_cached: found 19515 in 5
disk_read: sector: 19453 count: 1
chunk_get_cached: found 19516 in 5
disk_read: sector: 19454 count: 1
chunk_get_cached: found 19517 in 5
disk_read: sector: 19455 count: 1
chunk_get_cached: found 19518 in 5
disk_read: sector: 19456 count: 1
chunk_get_cached: found 19519 in 5
disk_read: sector: 19457 count: 1
chunk_get_cached: found 19520 in 5
disk_read: sector: 19458 count: 1
chunk_get_cached: found 19521 in 5
disk_read: sector: 19459 count: 1
chunk_get_cached: found 19522 in 5
disk_read: sector: 19460 count: 1
chunk_get_cached: found 19523 in 5
disk_read: sector: 19461 count: 1
chunk_get_cached: found 19524 in 5
disk_read: sector: 19462 count: 1
chunk_get_cached: found 19525 in 5
disk_read: sector: 19463 count: 1
chunk_get_cached: found 19526 in 5
disk_read: sector: 19464 count: 1
chunk_get_cached: found 19527 in 5
disk_read: sector: 19465 count: 1
chunk_get_cached: found 19528 in 5
disk_read: sector: 19466 count: 1
chunk_get_cached: found 19529 in 5
disk_read: sector: 19467 count: 1
chunk_get_cached: found 19530 in 5
disk_read: sector: 19468 count: 1
chunk_get_cached: found 19531 in 5
disk_read: sector: 19469 count: 1
chunk_get_cached: found 19532 in 5
disk_read: sector: 19470 count: 1
chunk_get_cached: found 19533 in 5
disk_read: sector: 19471 count: 1
chunk_get_cached: found 19534 in 5
disk_read: sector: 19472 count: 1
chunk_get_cached: found 19535 in 5
disk_read: sector: 19473 count: 1
chunk_get_cached: found 19536 in 5
disk_read: sector: 19474 count: 1
chunk_get_cached: found 19537 in 5
disk_read: sector: 19475 count: 1
chunk_get_cached: found 19538 in 5
disk_read: sector: 19476 count: 1
chunk_get_cached: found 19539 in 5
disk_read: sector: 19477 count: 1
chunk_get_cached: found 19540 in 5
disk_read: sector: 19478 count: 1
chunk_get_cached: found 19541 in 5
disk_read: sector: 19479 count: 1
chunk_get_cached: found 19542 in 5
disk_read: sector: 19480 count: 1
chunk_get_cached: found 19543 in 5
disk_read: sector: 19481 count: 1
chunk_get_cached: found 19544 in 5
disk_read: sector: 19482 count: 1
chunk_get_cached: found 19545 in 5
disk_read: sector: 19483 count: 1
chunk_get_cached: found 19546 in 5
disk_read: sector: 19484 count: 1
chunk_get_cached: found 19547 in 5
disk_read: sector: 19485 count: 1
chunk_get_cached: found 19548 in 5
disk_read: sector: 19486 count: 1
chunk_get_cached: found 19549 in 5
disk_read: sector: 19487 count: 1
chunk_get_cached: found 19550 in 5
disk_read: sector: 19488 count: 1
chunk_get_cached: found 19551 in 5
disk_read: sector: 19489 count: 1
chunk_get_cached: found 19552 in 5
disk_read: sector: 19490 count: 1
chunk_get_cached: found 19553 in 5
disk_read: sector: 19491 count: 1
chunk_get_cached: found 19554 in 5
disk_read: sector: 19492 count: 1
chunk_get_cached: found 19555 in 5
disk_read: sector: 19493 count: 1
chunk_get_cached: found 19556 in 5
disk_read: sector: 19494 count: 1
chunk_get_cached: found 19557 in 5
disk_read: sector: 19495 count: 1
chunk_get_cached: found 19558 in 5
disk_read: sector: 19496 count: 1
chunk_get_cached: found 19559 in 5
disk_read: sector: 19497 count: 1
chunk_get_cached: found 19560 in 5
disk_read: sector: 19498 count: 1
chunk_get_cached: found 19561 in 5
disk_read: sector: 19499 count: 1
chunk_get_cached: found 19562 in 5
disk_read: sector: 19500 count: 1
chunk_get_cached: found 19563 in 5
disk_read: sector: 19501 count: 1
chunk_get_cached: found 19564 in 5
disk_read: sector: 19502 count: 1
chunk_get_cached: found 19565 in 5
disk_read: sector: 19503 count: 1
chunk_get_cached: found 19566 in 5
disk_read: sector: 19504 count: 1
chunk_get_cached: found 19567 in 5
disk_read: sector: 19505 count: 1
chunk_get_cached: found 19568 in 5
disk_read: sector: 19506 count: 1
chunk_get_cached: found 19569 in 5
disk_read: sector: 19507 count: 1
chunk_get_cached: found 19570 in 5
disk_read: sector: 19508 count: 1
chunk_get_cached: found 19571 in 5
disk_read: sector: 19509 count: 1
chunk_get_cached: found 19572 in 5
disk_read: sector: 19510 count: 1
chunk_get_cached: found 19573 in 5
disk_read: sector: 19511 count: 1
chunk_get_cached: found 19574 in 5
disk_read: sector: 19512 count: 1
chunk_get_cached: found 19575 in 5
disk_read: sector: 19513 count: 1
chunk_get_cached: found 19576 in 5
disk_read: sector: 19514 count: 1
chunk_get_cached: found 19577 in 5
disk_read: sector: 19515 count: 1
chunk_get_cached: found 19578 in 5
disk_read: sector: 19516 count: 1
chunk_get_cached: found 19579 in 5
disk_read: sector: 19517 count: 1
chunk_get_cached: found 19580 in 5
disk_read: sector: 19518 count: 1
chunk_get_cached: found 19581 in 5
disk_read: sector: 19519 count: 1
chunk_get_cached: found 19582 in 5
disk_read: sector: 19520 count: 1
chunk_get_cached: found 19583 in 5
disk_read: sector: 19521 count: 1
block_cache: 19584 to 6
mmc0: mci_sd_read: Read 128 block(s), starting at 19584
chunk_get_cached: found 19584 in 6
disk_read: sector: 19522 count: 1
chunk_get_cached: found 19585 in 6
disk_read: sector: 19523 count: 1
chunk_get_cached: found 19586 in 6
disk_read: sector: 19524 count: 1
chunk_get_cached: found 19587 in 6
disk_read: sector: 19525 count: 1
chunk_get_cached: found 19588 in 6
disk_read: sector: 19526 count: 1
chunk_get_cached: found 19589 in 6
disk_read: sector: 19527 count: 1
chunk_get_cached: found 19590 in 6
disk_read: sector: 19528 count: 1
chunk_get_cached: found 19591 in 6
disk_read: sector: 19529 count: 1
chunk_get_cached: found 19592 in 6
disk_read: sector: 19530 count: 1
chunk_get_cached: found 19593 in 6
disk_read: sector: 19531 count: 1
chunk_get_cached: found 19594 in 6
disk_read: sector: 19532 count: 1
chunk_get_cached: found 19595 in 6
disk_read: sector: 19533 count: 1
chunk_get_cached: found 19596 in 6
disk_read: sector: 19534 count: 1
chunk_get_cached: found 19597 in 6
disk_read: sector: 167 count: 1
chunk_get_cached: found 230 in 3
disk_read: sector: 19535 count: 1
chunk_get_cached: found 19598 in 6
disk_read: sector: 19536 count: 1
chunk_get_cached: found 19599 in 6
disk_read: sector: 19537 count: 1
chunk_get_cached: found 19600 in 6
disk_read: sector: 19538 count: 1
chunk_get_cached: found 19601 in 6
disk_read: sector: 19539 count: 1
chunk_get_cached: found 19602 in 6
disk_read: sector: 19540 count: 1
chunk_get_cached: found 19603 in 6
disk_read: sector: 19541 count: 1
chunk_get_cached: found 19604 in 6
disk_read: sector: 19542 count: 1
chunk_get_cached: found 19605 in 6
disk_read: sector: 19543 count: 1
chunk_get_cached: found 19606 in 6
disk_read: sector: 19544 count: 1
chunk_get_cached: found 19607 in 6
disk_read: sector: 19545 count: 1
chunk_get_cached: found 19608 in 6
disk_read: sector: 19546 count: 1
chunk_get_cached: found 19609 in 6
disk_read: sector: 19547 count: 1
chunk_get_cached: found 19610 in 6
disk_read: sector: 19548 count: 1
chunk_get_cached: found 19611 in 6
disk_read: sector: 19549 count: 1
chunk_get_cached: found 19612 in 6
disk_read: sector: 19550 count: 1
chunk_get_cached: found 19613 in 6
disk_read: sector: 19551 count: 1
chunk_get_cached: found 19614 in 6
disk_read: sector: 19552 count: 1
chunk_get_cached: found 19615 in 6
disk_read: sector: 19553 count: 1
chunk_get_cached: found 19616 in 6
disk_read: sector: 19554 count: 1
chunk_get_cached: found 19617 in 6
disk_read: sector: 19555 count: 1
chunk_get_cached: found 19618 in 6
disk_read: sector: 19556 count: 1
chunk_get_cached: found 19619 in 6
disk_read: sector: 19557 count: 1
chunk_get_cached: found 19620 in 6
disk_read: sector: 19558 count: 1
chunk_get_cached: found 19621 in 6
disk_read: sector: 19559 count: 1
chunk_get_cached: found 19622 in 6
disk_read: sector: 19560 count: 1
chunk_get_cached: found 19623 in 6
disk_read: sector: 19561 count: 1
chunk_get_cached: found 19624 in 6
disk_read: sector: 19562 count: 1
chunk_get_cached: found 19625 in 6
disk_read: sector: 19563 count: 1
chunk_get_cached: found 19626 in 6
disk_read: sector: 19564 count: 1
chunk_get_cached: found 19627 in 6
disk_read: sector: 19565 count: 1
chunk_get_cached: found 19628 in 6
disk_read: sector: 19566 count: 1
chunk_get_cached: found 19629 in 6
disk_read: sector: 19567 count: 1
chunk_get_cached: found 19630 in 6
disk_read: sector: 19568 count: 1
chunk_get_cached: found 19631 in 6
disk_read: sector: 19569 count: 1
chunk_get_cached: found 19632 in 6
disk_read: sector: 19570 count: 1
chunk_get_cached: found 19633 in 6
disk_read: sector: 19571 count: 1
chunk_get_cached: found 19634 in 6
disk_read: sector: 19572 count: 1
chunk_get_cached: found 19635 in 6
disk_read: sector: 19573 count: 1
chunk_get_cached: found 19636 in 6
disk_read: sector: 19574 count: 1
chunk_get_cached: found 19637 in 6
disk_read: sector: 19575 count: 1
chunk_get_cached: found 19638 in 6
disk_read: sector: 19576 count: 1
chunk_get_cached: found 19639 in 6
disk_read: sector: 19577 count: 1
chunk_get_cached: found 19640 in 6
disk_read: sector: 19578 count: 1
chunk_get_cached: found 19641 in 6
disk_read: sector: 19579 count: 1
chunk_get_cached: found 19642 in 6
disk_read: sector: 19580 count: 1
chunk_get_cached: found 19643 in 6
disk_read: sector: 19581 count: 1
chunk_get_cached: found 19644 in 6
disk_read: sector: 19582 count: 1
chunk_get_cached: found 19645 in 6
disk_read: sector: 19583 count: 1
chunk_get_cached: found 19646 in 6
disk_read: sector: 19584 count: 1
chunk_get_cached: found 19647 in 6
disk_read: sector: 19585 count: 1
chunk_get_cached: found 19648 in 6
disk_read: sector: 19586 count: 1
chunk_get_cached: found 19649 in 6
disk_read: sector: 19587 count: 1
chunk_get_cached: found 19650 in 6
disk_read: sector: 19588 count: 1
chunk_get_cached: found 19651 in 6
disk_read: sector: 19589 count: 1
chunk_get_cached: found 19652 in 6
disk_read: sector: 19590 count: 1
chunk_get_cached: found 19653 in 6
disk_read: sector: 19591 count: 1
chunk_get_cached: found 19654 in 6
disk_read: sector: 19592 count: 1
chunk_get_cached: found 19655 in 6
fat_read: 0 214984 214984 9be12040

--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--k+w/mQv8wyuph6w0--
